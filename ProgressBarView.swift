//
//  ProgressBarView.swift
//  ProgressFun
//
//  Created by Alwin Lazar on 16/01/17.
//  Copyright © 2017 Xeoscript Technologies. All rights reserved.
//

import UIKit

class ProgressBarView: UIView {
    
    private var _innerProgress: CGFloat = 0.0
    
    // getters and setters
    var progress: CGFloat {
        set(newProgress) {
            
            // this says it exceeds the limit of slider then 
            // it set the value as 1.0
            if newProgress > 1.0 {
                _innerProgress = 1.0
            }
            
            else if newProgress < 0.0 {
                _innerProgress = 0.0
            }
            
            // set the actual value
            else {
                _innerProgress = newProgress
            }
            
            // refresh every time
            setNeedsDisplay()
        }
        
        get {
            return _innerProgress * bounds.width
        }
    }

    // this method is used to draw the progress bar
    // that comming from the ProgressBarDraws
    override func draw(_ rect: CGRect) {
        ProgressBarDraws.drawProgressBar(frame: bounds, progress: progress)
    }

}
