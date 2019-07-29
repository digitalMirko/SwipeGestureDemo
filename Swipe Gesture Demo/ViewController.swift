//
//  ViewController.swift
//  Swipe Gesture Demo
//
//  Created by Mirko Cukich on 7/28/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Graphic image
    @IBOutlet weak var imageView: UIImageView!
    // Swipe Label
    @IBOutlet weak var swipeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Swipe Right Gesture Recognizer Detection
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestures(sender:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
        // Swipe Left Gesture Recognizer Detection
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestures(sender:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        // Swipe Up Gesture Recognizer Detection
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestures(sender:)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(swipeUp)
        
        // Swipe Down Gesture Recognizer Detection
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestures(sender:)))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(swipeDown)
    }
    
    // Performs the actions depending on the direction
    @objc func swipeGestures(sender: UISwipeGestureRecognizer){
        // Right Swipe Gesture, updates label text and graphic image
        if sender.direction == UISwipeGestureRecognizer.Direction.right {
            swipeLabel.text = "Swiped Right"
            imageView.image = UIImage(named: "HandGestureRight")
        }
        // Left Swipe Gesture, updates label text and graphic image
        if sender.direction == UISwipeGestureRecognizer.Direction.left {
            swipeLabel.text = "Swiped Left"
            imageView.image = UIImage(named: "HandGestureLeft")
        }
        // Up Swipe Gesture, updates label text and graphic image
        if sender.direction == UISwipeGestureRecognizer.Direction.up {
            swipeLabel.text = "Swiped Up"
            imageView.image = UIImage(named: "HandGestureUp")
        }
        // Down Swipe Gesture, updates label text and graphic image
        if sender.direction == UISwipeGestureRecognizer.Direction.down {
            swipeLabel.text = "Swiped Down"
            imageView.image = UIImage(named: "HandGestureDown")
        }
    }
}

