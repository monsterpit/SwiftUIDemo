//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Mojave on 07/11/19.
//  Copyright © 2019 Mojave. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var rooms : [Room] = []
    
    var body: some View {
       
            
        List(rooms) { room in
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
        ContentView(rooms: testData)
    }
}
