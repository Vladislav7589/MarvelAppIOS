//
//  DrawTiangle.swift
//  MarvelAppIOS
//
//  Created by user225687 on 12/11/22.
//
import SwiftUI


struct Triangle: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.width, y: rect.height*0.4))
        path.addLine(to: CGPoint(x:0,y:rect.height))
        path.addLine(to: CGPoint(x:rect.width,y:rect.height))
        path.closeSubpath()
        return path
    }
}
