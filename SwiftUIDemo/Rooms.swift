//
//  Rooms.swift
//  SwiftUIDemo
//
//  Created by Mojave on 07/11/19.
//  Copyright © 2019 Mojave. All rights reserved.
//

import SwiftUI

struct Rooms : Identifiable {
    
    var id = UUID()
    var name : String
    var capacity : Int
    var hasVideos : Bool
    
    var imageName : String  { return name }
    var thumbnailName : String  { return name + "Thumb"}
    
}


#if DEBUG
let testData = [
    Rooms(name: "Dock yard Room", capacity: 10, hasVideos: true),
    Rooms(name: "Emergency Room", capacity: 20, hasVideos: false),
    Rooms(name: "Army Room", capacity: 15, hasVideos: true),
    Rooms(name: "Rocket Room", capacity: 5, hasVideos: true),
    Rooms(name: "Barrack Room", capacity: 14, hasVideos: false),
    Rooms(name: "Grapes Room", capacity: 7, hasVideos: true),
    Rooms(name: "Toys Room", capacity: 12, hasVideos: true),
    Rooms(name: "Radio Room", capacity: 30, hasVideos: false),
    Rooms(name: "Pulse Room", capacity: 10, hasVideos: false),
    Rooms(name: "Wifi Room", capacity: 50, hasVideos: true),
    Rooms(name: "shampoo Room", capacity: 2, hasVideos: false)
    
]

#endif
