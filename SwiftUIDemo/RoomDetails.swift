//
//  RoomDetails.swift
//  SwiftUIDemo
//
//  Created by Mojave on 08/11/19.
//  Copyright © 2019 Mojave. All rights reserved.
//

import SwiftUI

struct RoomDetails: View {
    
    //persisted by the framework
    @State private var zoomed : Bool = false
    
    //derived Value :- passed in by the parent of the view
    let room : Room
    
    var body: some View {
        
        //Declarative syntax
        ZStack(alignment: .topLeading) {
            Image(room.thumbnailName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .navigationBarTitle(Text(room.name), displayMode: .inline)
                .onTapGesture {
                    withAnimation(.linear(duration: 2)) {
                        self.zoomed.toggle()
                    }
            }
            .frame(minWidth : 0 , maxWidth: .infinity,minHeight:  0 ,maxHeight: .infinity)
            
            if room.hasVideos && !zoomed{
                Image(systemName: "video.fill")
                    .padding(.all)
                    .font(.title)
                    .transition(.move(edge: .leading))
            }
        }
    }
    
    
}

struct RoomDetails_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            NavigationView { RoomDetails(room: testData[0]) }
            NavigationView { RoomDetails(room: testData[1]) }
        }
        
        
    }
}
