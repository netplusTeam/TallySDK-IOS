//
//  ViewController.swift
//  TallyiOS
//
//  Created by 50696559 on 04/30/2024.
//  Copyright (c) 2024 50696559. All rights reserved.
//

import UIKit
import TallyiOS

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openFromExample(){
        let config = TallyConfig(userId: "1218", userFullName: "Promise Ochornma", userEmail: "ochornmapromise@gmail.com", userPhone: "08033214929", bankName: "First Bank", staging: true, token: nil)
        config.openTallySdk(controller: self)
    }

}

