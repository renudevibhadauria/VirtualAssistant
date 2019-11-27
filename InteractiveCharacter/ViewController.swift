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

    @IBAction func beginAction(_ sender: UIButton) {
        
    }
    @IBOutlet weak var skView: SKView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let scene = InteractiveScene(fileNamed: "GameScene") {
            // Configure the view.
            let skview = skView as SKView
            //skView.showsFPS = true
            //skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            //skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            //scene.scaleMode = .aspectFill
            
            skview.presentScene(scene)
        }
    }


}

