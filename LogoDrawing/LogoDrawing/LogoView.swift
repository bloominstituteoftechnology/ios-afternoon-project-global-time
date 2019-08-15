//
//  LogoView.swift
//  LogoDrawing
//
//  Created by Bradley Yin on 8/15/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import UIKit

@IBDesignable class LogoView: UIView {
    

        // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let lineWidth: CGFloat = 5.0
        let outterColor = UIColor(red: 0, green: 100/255, blue: 0, alpha: 1).cgColor
        let innerColor = UIColor.green.cgColor
        let leftPoint = CGPoint(x: rect.size.width * 0.1 , y: rect.size.height * 1/3)
        let rightPoint = CGPoint(x: rect.size.width * 0.9 , y: rect.size.height * 1/3)
        let topPoint = CGPoint(x: rect.size.width / 2, y: rect.origin.y)
        let bottomPoint = CGPoint(x: rect.size.width / 2, y: rect.maxY)

        if let context = UIGraphicsGetCurrentContext() {
            context.beginPath()
            context.setStrokeColor(innerColor)
            context.move(to: rightPoint)
            context.addLine(to: CGPoint(x: topPoint.x, y: rightPoint.y + 40))
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.beginPath()
            context.setStrokeColor(outterColor)
            context.move(to: CGPoint(x: (topPoint.x - leftPoint.x) / 2 + 40, y: (leftPoint.y - topPoint.y) / 2 - 20))
            context.addLine(to: CGPoint(x: topPoint.x, y: rightPoint.y - 20))
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.beginPath()
            context.setStrokeColor(innerColor)
            context.move(to: CGPoint(x: leftPoint.x + 20, y: rightPoint.y + 40))
            context.addLine(to: CGPoint(x: topPoint.x, y: rightPoint.y + 100))
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.beginPath()
            context.setStrokeColor(outterColor)
            context.move(to: leftPoint)
            context.addLine(to: topPoint)
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.beginPath()
            context.setStrokeColor(outterColor)
            context.move(to: rightPoint)
            context.addLine(to: topPoint)
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.beginPath()
            context.setStrokeColor(outterColor)
            context.move(to: rightPoint)
            context.addLine(to: bottomPoint)
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.beginPath()
            context.setStrokeColor(outterColor)
            context.move(to: leftPoint)
            context.addLine(to: bottomPoint)
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.beginPath()
            context.setStrokeColor(outterColor)
            context.move(to: topPoint)
            context.addLine(to: bottomPoint)
            context.setLineWidth(lineWidth)
            context.strokePath()
        }
    }
 

}
