//
//  RoomDetails.swift
//  SwiftUIDemo
//
//  Created by Mojave on 08/11/19.
//  Copyright © 2019 Mojave. All rights reserved.
//

import SwiftUI

struct RoomDetails: View {
    
    @State private var zoomed : Bool = false
    
    let room : Room
    
    var body: some View {
        Image(room.thumbnailName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .navigationBarTitle(Text(room.name), displayMode: .inline)
            .onTapGesture {
                self.zoomed.toggle()
        }
    
    }
}

struct RoomDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { RoomDetails(room: testData[0]) }
    }
}
