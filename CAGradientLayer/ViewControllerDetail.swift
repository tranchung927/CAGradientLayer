//
//  ViewControllerDetail.swift
//  CAGradientLayer
//
//  Created by ChungTran on 12/12/17.
//  Copyright © 2017 ChungTran. All rights reserved.
//

import UIKit

class ViewControllerDetail: UIViewController {

    let gradient = CAGradientLayer()
    var gradientSet = [[CGColor]]()
    var currentGradient: Int = 0
    
    let blue = UIColor(red: 48/255, green: 62/255, blue: 50/255, alpha: 1).cgColor
    let orange = UIColor(red: 244/255, green: 88/255, blue: 53/255, alpha: 1).cgColor
    let pink = UIColor(red: 196/255, green: 70/255, blue: 107/255, alpha: 1).cgColor

    override func viewDidLoad() {
        super.viewDidLoad()
        gradient.frame = self.view.bounds
        gradient.colors = [blue, orange, blue]
        gradient.locations = [0.0, 0.5, 1.0]
        gradient.startPoint = CGPoint(x:0, y:0)
        gradient.endPoint = CGPoint(x:0, y:1)
        gradient.drawsAsynchronously = true
        self.view.layer.addSublayer(gradient)
        animateView()
    }
    
    func animateView() {
        let gradientAnimation = CABasicAnimation(keyPath: "locations")
        gradientAnimation.fromValue = [0.0, 0.0, 0.25]
        gradientAnimation.toValue = [0.75, 1.0, 1.0]
        gradientAnimation.duration = 3.0
        gradientAnimation.autoreverses = false
        gradientAnimation.repeatCount = Float.infinity
        self.gradient.add(gradientAnimation, forKey: nil)
    }
}
