//
//  SideMenuItem.swift
//  VisionOS_MusicPlayer
//
//  Created by Akshay Kadam on 19/03/24.
//
import Foundation

struct SideMenuItem: Identifiable, Hashable{
    var id = UUID()
    var name: String
    var icon: String
}

let sideMenuItem: [SideMenuItem] = [
    SideMenuItem(name: "Recently Added", icon: "clock"),
    SideMenuItem(name: "Artists", icon: "music.mic"),
    SideMenuItem(name: "Album", icon: "square.stack"),
    SideMenuItem(name: "Songs", icon: "music.note"),
    SideMenuItem(name: "Made For You", icon: "person.crop.square"),
]
