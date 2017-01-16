//
//  ViewController.swift
//  ProgressFun
//
//  Created by Alwin Lazar on 16/01/17.
//  Copyright © 2017 Xeoscript Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBarView: ProgressBarView!
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // detect slider movment and set that value to progress 
    @IBAction func sliderMoved(_ sender: Any) {
        
        progressBarView.progress = CGFloat(slider.value)
    }

}

