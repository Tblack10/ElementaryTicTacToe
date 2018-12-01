//
//  TicTacToeView.swift
//  TicTacToe
//
//  Created by Travis Black on 2018-11-25.
//  Copyright © 2018 Tralack. All rights reserved.
//

import UIKit

@IBDesignable
class TicTacToeView: UIView {
    


    var XorO: (type: Character, start: CGPoint) = ("x", CGPoint(x: -40, y: -40)) {didSet{ setNeedsDisplay(); setNeedsLayout()}}

    
    var previousXPaths:[CGPoint] = []
    var previousOPaths:[CGPoint] = []
    
    override func draw(_ rect: CGRect) {
        createBoardLine(from: CGPoint(x: 128, y: 130), to: CGPoint(x: 128, y: 560))
        createBoardLine(from: CGPoint(x: 248, y: 130), to: CGPoint(x: 246, y: 560))
        createBoardLine(from: CGPoint(x: 5, y: 280), to: CGPoint(x: 370, y: 280))
        createBoardLine(from: CGPoint(x: 5, y: 404), to: CGPoint(x: 370, y: 404))
        
        if (XorO.type == "x"){
            previousXPaths.append(XorO.start)
        } else {
            previousOPaths.append(XorO.start)
        }
        
        for (index, _) in previousXPaths.enumerated() {
            drawX(from: previousXPaths[index])
        }
        
        for (index, _) in previousOPaths.enumerated() {
            drawO(from: previousOPaths[index])
        }
}
    
      func createBoardLine(from start: CGPoint, to end: CGPoint){
        let path = UIBezierPath()
        path.move(to: start)
        path.addLine(to: end)
        path.close()
        path.lineWidth = 5
        UIColor.yellow.set()
        path.stroke()
        path.fill()
    }
    
    
    
     func drawX(from start: CGPoint){
        let centerX = start.x
        let centerY = start.y
        
        createBoardLine(from: start, to: CGPoint(x: centerX-40, y: centerY-40))
        createBoardLine(from: start, to: CGPoint(x: centerX-40, y: centerY+40))
        createBoardLine(from: start, to: CGPoint(x: centerX+40, y: centerY-40))
        createBoardLine(from: start, to: CGPoint(x: centerX+40, y: centerY+40))
    }
    
     func drawO(from start: CGPoint) {
        let circle = UIBezierPath(arcCenter: start, radius: 50, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.yellow.set()
        circle.lineWidth = 5
        circle.stroke()
    }
    
    func reset() {
        previousOPaths.removeAll()
        previousXPaths.removeAll()
        XorO = ("x", CGPoint(x:-40, y:-40))
        setNeedsDisplay()
        setNeedsLayout()
    }
    
    
    
}
