//
//  RoomDetails.swift
//  SwiftUIDemo
//
//  Created by Mojave on 08/11/19.
//  Copyright © 2019 Mojave. All rights reserved.
//

import SwiftUI

struct RoomDetails: View {
    
    let room : Room
    
    var body: some View {
        Image(room.thumbnailName)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct RoomDetails_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetails(room: testData[0])
    }
}
