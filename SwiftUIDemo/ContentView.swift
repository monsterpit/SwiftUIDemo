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
            List(store.rooms) { room in
                
                RoomCell(room: room)
                
            }
            .navigationBarTitle(Text("Rooms"))
            
        }
        

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
        ContentView(store: RoomStore(rooms: testData))
    }
}

