
//
//  View1.swift
//  class7hittest
//
//  Created by prenez on 4/16/15.
//  Copyright (c) 2015 Prenezsoft. All rights reserved.
//

import UIKit


class View1: UIView {
    
    override func hitTest(point: CGPoint, withEvent e: UIEvent?) -> UIView? {
        if let result = super.hitTest(point, withEvent:e) {
            return result
        }
        for sub in self.subviews.reverse() as! [UIView] {
            let pt = self.convertPoint(point, toView:sub)
            if let result = sub.hitTest(pt, withEvent:e) {
                return result
            }
        }
        return nil
    }
    
}

