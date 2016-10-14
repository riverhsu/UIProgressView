//
//  ViewController.swift
//  UIProgressView
//
//  Created by Sgmedical on 2016/10/14.
//  Copyright © 2016年 Sgmedical. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    var timeTapped : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.timeTapped = 0
        self.progressView.progress = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        self.timeTapped += 0.1
        
        if self.timeTapped == 1.0 {
            self.progressView.progress = 1.0
            return
        }
        
        self.progressView.progress = self.timeTapped
    }

}

