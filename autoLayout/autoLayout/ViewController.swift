//
//  ViewController.swift
//  autoLayout
//
//  Created by Junhong Park on 8/5/20.
//  Copyright © 2020 Junhong Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        var constraintX: NSLayoutConstraint
        constraintX = button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        
        var constraintY: NSLayoutConstraint
        constraintY = button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        
        constraintX.isActive = true
        constraintY.isActive = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        var buttonConstraintX: NSLayoutConstraint
        buttonConstraintX = label.centerXAnchor.constraint(equalTo: button.centerXAnchor)
        var buttonConstraintY: NSLayoutConstraint
        buttonConstraintY = label.centerYAnchor.constraint(equalTo: button.topAnchor, constant: -10)
        
        buttonConstraintX.isActive = true
        buttonConstraintY.isActive = true
        
        var widthConstraint: NSLayoutConstraint
        widthConstraint = label.widthAnchor.constraint(equalTo: button.widthAnchor, multiplier: 2.0)
        
        label.backgroundColor = UIColor.brown
        button.backgroundColor = UIColor.green
        
        widthConstraint.isActive = true
        
    }


}

