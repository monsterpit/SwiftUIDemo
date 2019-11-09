//
//  RoomStore.swift
//  SwiftUIDemo
//
//  Created by Mojave on 09/11/19.
//  Copyright © 2019 Mojave. All rights reserved.
//

//https://stackoverflow.com/questions/57087655/does-not-conform-to-protocol-bindableobject-xcode-11-beta-4/57087833

import SwiftUI
import Combine

//Beta 3 BindableObject with  didSet
//class RoomStore: BindableObject{
//
//    var rooms : [Room]{
//        didSet{didChange.send()}
//
//    }
//    init(rooms : [Room] = []){
//        self.rooms = rooms
//    }
//
//    var didChange = PassthroughSubject<Void,Never>()
//}


//Beta 4 BindableObject with willSet instead of didSet
//class RoomStore: BindableObject {
//
//    var rooms : [Room]{
//        willSet{
//            didChange.send()
//        }
//    }
//
//    init(rooms : [Room] = []) {
//        self.rooms = rooms
//    }
//
//    var didChange = PassthroughSubject<Void,Never>()
//
//
//}


//Beta 5
//
//BindableObject is replaced by the ObservableObject protocol from the Combine framework. (50800624)
//
//You can manually conform to ObservableObject by defining an objectWillChange publisher that emits before the object changes. However, by default, ObservableObject automatically synthesizes objectWillChange and emits before any @Published properties change.
//
//@ObjectBinding is replaced by @ObservedObject.

//class RoomStore: ObservableObject {
//
//    var rooms : [Room]{
//        willSet{
//            didChange.send()
//        }
//    }
//
//    init(rooms : [Room] = []) {
//        self.rooms = rooms
//    }
//
//    var didChange = PassthroughSubject<Void,Never>()
//
//
//}


//MARK:- ObservableObject
class RoomStore: ObservableObject {

    @Published var rooms : [Room]
    
    init(rooms : [Room] = []) {
        self.rooms = rooms
    }

}
