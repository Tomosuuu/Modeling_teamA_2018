//
//  ForthViewController.swift
//  button
//
//  Created by 坂本昂弘 on 2018/02/14.
//  Copyright © 2018年 坂本昂弘. All rights reserved.
//

import Foundation
import UIKit

class ForthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var titol: UILabel!
    
    
    
    @IBAction func pushButtonNext(_ sender: Any) {
        titol.text = "俺に触っな？？"
    }
    
    
    @IBAction func pushBackButton(_ sender: Any) {
        titol.text = "外れ"
    }
}
