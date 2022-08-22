//
//  arc3.swift
//  Chart_Demo
//
//  Created by Chinh Ng on 24/06/2022.
//

import UIKit

@IBDesignable class Arc: UIView {
    private struct Constants {
        static let numberOfGlasses = 8
        static let lineWidth: CGFloat = 5.0
        static let arcWidth: CGFloat = 24

        static var halfOfLineWidth: CGFloat {
          return lineWidth / 2
        }
    }
  
    override func draw(_ rect: CGRect) {
        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        let radius = CGFloat(118)

        drawArc(center: center, radius: radius, startAngle: 0, endAngle: 2 * .pi, counterColor: .init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1))
        drawArc(center: center, radius: radius, startAngle: 3 * .pi / 2, endAngle: .pi / 2, counterColor: .init(red: 66/255, green: 181/255, blue: 164/255, alpha: 1))
        drawArc(center: center, radius: radius, startAngle: 13 * .pi / 36, endAngle: .pi / 2, counterColor: .init(red: 233/255, green: 80/255, blue: 80/255, alpha: 1))
    }
    
    func drawArc(center: CGPoint, radius: CGFloat ,startAngle: CGFloat, endAngle: CGFloat, counterColor: UIColor) {
        let path = UIBezierPath(
          arcCenter: center,
          radius: radius/2 - Constants.arcWidth/2,
          startAngle: startAngle,
          endAngle: endAngle,
          clockwise: true)
        
        path.lineWidth = Constants.arcWidth
        counterColor.setStroke()
        path.stroke()
    }
}
