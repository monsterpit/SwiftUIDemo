//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Mojave on 07/11/19.
//  Copyright © 2019 Mojave. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // var rooms : [Room] = []
    
    //Beta 3
    // @ObjectBinding var store = RoomStore()
    
    @ObservedObject var store = RoomStore()
    
    
    var body: some View {
        
        NavigationView{
            List{
                
                Section {
                    Button(action: addRoom) {
                        Text("Add Rooms")
                    }
                }
                Section {
                    ForEach(store.rooms) { room in
                        RoomCell(room: room)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
            }
            .navigationBarTitle(Text("Rooms"))
                //Applying style to List
                .listStyle(GroupedListStyle())
                .navigationBarItems(trailing: EditButton())
        }
    }
    
    func addRoom(){
        store.rooms.append(Room(name: "Hall 2", capacity: 2000, hasVideos: false))
    }
    
    func delete(at offSet : IndexSet){
        store.rooms.remove(atOffsets : offSet)
    }
    
    func move(from source : IndexSet , to destination : Int)
    {
        store.rooms.move(fromOffsets: source, toOffset: destination)
    }
    
}

struct RoomCell: View {
    
    let room : Room
    
    var body: some View {
        NavigationLink(destination: RoomDetails(room: room)){
            
            Image(room.thumbnailName)
                .cornerRadius(8)
            
            
            VStack(alignment: .leading, spacing: 10.0){
                Text(room.name)
                    .font(.subheadline)
                
                
                Text("\(room.capacity) People")
                    .foregroundColor(.secondary)
                
            }
            
        }
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
         
        Group {
            ContentView(store: RoomStore(rooms: testData))
            
            ContentView(store: RoomStore(rooms: testData))
                .environment(\.sizeCategory, .extraExtraExtraLarge)
            
            ContentView(store: RoomStore(rooms: testData))
                .environment(\.colorScheme, .dark)
            
            ContentView(store: RoomStore(rooms: testData))
                .environment(\.layoutDirection, .rightToLeft)
                .environment(\.locale, Locale(identifier: "ja"))
            
        }
    }
}

