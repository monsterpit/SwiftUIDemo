//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Mojave on 07/11/19.
//  Copyright © 2019 Mojave. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
       
            
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Image(systemName: "photo")
            
            VStack(alignment: .leading, spacing: 10.0){
                Text("Hey There!")
                    .font(.subheadline)
                
                Text("20 People")
                    .foregroundColor(.secondary)
                
            }
        }
            
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
