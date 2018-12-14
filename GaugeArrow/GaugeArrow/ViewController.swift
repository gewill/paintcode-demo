//
//  ViewController.swift
//  GaugeArrow
//
//  Created by Matej Duník on 10/10/2018.
//  Copyright © 2018 Matej Duník. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gaugeView: GaugeView!
    @IBOutlet weak var viewWidth: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.green
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressureSliderChanged(_ sender: UISlider) {
        self.gaugeView.progress = CGFloat(sender.value)
        self.viewWidth.constant = CGFloat(300 * sender.value)
    }


}

