//
//  ViewController.swift
//  InteractiveCharacter
//
//  Created by Pratibha Gupta on 26/11/19.
//  Copyright © 2019 Sapient. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let scene = InteractiveScene(fileNamed: "Interactive") {
            // Configure the view.
            let skView = view as! SKView
            //skView.showsFPS = true
            //skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            //skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            //scene.scaleMode = .aspectFill
            
            skView.presentScene(scene)
        }
    }


}

