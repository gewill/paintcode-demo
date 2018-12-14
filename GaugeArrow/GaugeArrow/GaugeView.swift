//
//  GaugeView.swift
//  GaugeArrow
//
//  Created by Matej Duník on 10/10/2018.
//  Copyright © 2018 Matej Duník. All rights reserved.
//

import UIKit

class GaugeView: UIView {

    var progress : CGFloat = 0.5 {
        didSet {
            self.setNeedsDisplay()
        }
    }

    override func draw(_ rect: CGRect) {
        // Drawing code
        StyleKit.drawGauge(progressColor: UIColor.red, remainColor: UIColor.gray, progress: progress, startAngle: -90, lineWidth: 3, size: self.bounds.size)
    }

}
