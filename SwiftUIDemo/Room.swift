//
//  Rooms.swift
//  SwiftUIDemo
//
//  Created by Mojave on 07/11/19.
//  Copyright © 2019 Mojave. All rights reserved.
//

import SwiftUI

struct Room : Identifiable {
    
    var id = UUID()
    var name : String
    var capacity : Int
    var hasVideos : Bool
    
    var imageName : String  { return name }
    var thumbnailName : String  { return name + " Thumb"}
    
}


#if DEBUG
let testData = [
    Room(name: "Dock yard Room", capacity: 10, hasVideos: true),
    Room(name: "Emergency Room", capacity: 20, hasVideos: false),
    Room(name: "Army Room", capacity: 15, hasVideos: true),
    Room(name: "Rocket Room", capacity: 5, hasVideos: true),
    Room(name: "Barrack Room", capacity: 14, hasVideos: false),
    Room(name: "Grapes Room", capacity: 7, hasVideos: true),
    Room(name: "Toys Room", capacity: 12, hasVideos: true),
    Room(name: "Radio Room", capacity: 30, hasVideos: false),
    Room(name: "Pulse Room", capacity: 10, hasVideos: false),
    Room(name: "Wifi Room", capacity: 50, hasVideos: true),
    Room(name: "shampoo Room", capacity: 2, hasVideos: false)
    
]

#endif
