//
//  ViewController.swift
//  class7hittest
//
//  Created by prenez on 4/16/15.
//  Copyright (c) 2015 Prenezsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let recognizer = UITapGestureRecognizer(target: self, action:Selector("handleTap:"))
        
        recognizer.delegate = self
        
        recognizer.numberOfTapsRequired = 1
        // recognizer.
        
        view.addGestureRecognizer(recognizer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func handleTap(recognizer: UITapGestureRecognizer) {

        let p = recognizer.locationOfTouch(0, inView: recognizer.view)
        let v = recognizer.view!.hitTest(p, withEvent: nil)
        
        
         println(v!.tag)
         println(v!.tag)
       
    }
    
}

