//
//  model.swift
//  MarvelAppIOS
//
//  Created by user225687 on 12/11/22.
//

import SwiftUI

struct Hero: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let color: Color
}
var heroes = [
    Hero(name: "Deadpool", image: "deadpool", color: Color(hex: 0xff6a1e29)),
    Hero(name: "Captain America (House of M)",image: "captain_america", color: Color(hex: 0xffd4ae1b)),
    Hero(name: "Spider-man",image: "spider_man", color: Color(hex: 0xffb5001a)),
    Hero(name: "Thanos",image: "thanos", color: Color(hex: 0xff4e407a)),
    Hero(name: "Tor",image: "tor", color: Color(hex: 0xff009fbf)),
    
]
