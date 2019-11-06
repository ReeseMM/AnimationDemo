//
//  ViewController.swift
//  AnimationDemo
//
//  Created by Reese Hemery on 11/6/19.
//  Copyright © 2019 Reese Hemery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewToAnimate: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func animationFade(_ sender: UIButton)
    {
        let slab = viewToAnimate
        UIView.animate(withDuration: 1, animations: {slab!.alpha = 0})
        
    }
    
    @IBAction func animationSpin(_ sender: UIButton) {
        
        let rotation: CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.toValue = Double.pi * 2
        rotation.duration = 2.0 // or however long you want ...
        rotation.isCumulative = true
        rotation.repeatCount = 0
        viewToAnimate.layer.add(rotation, forKey: "rotationAnimation")
        
    }
    
    @IBAction func animationMove(_ sender: UIButton) {
    }
    
}

