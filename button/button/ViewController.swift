//
//  ViewController.swift
//  button
//
//  Created by 坂本昂弘 on 2017/11/16.
//  Copyright © 2017年 坂本昂弘. All rights reserved.
//

import UIKit

let aaa = UserDefaults.standard

class ViewController: UIViewController {
    
    
    
     @IBAction func goBack(_ segue:UIStoryboardSegue) {}
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "卍勝ち取り単位卍！！！"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        //以下ボタンのコード
    @IBAction func buttonTapped1(_ sender: Any) {
        performSegue(withIdentifier: "timetable", sender: nil)
    }
    
    //単位取得s
    @IBAction func buttonTapped2(_ sender: AnyObject) {
      performSegue(withIdentifier: "manage_credit", sender: nil)
    }
    
    
   
    @IBAction func buttonTapped4(_ sender: Any) {
        performSegue(withIdentifier: "reason", sender: nil)
    }
    
    
    @IBAction func buttonTapped5(_ sender: AnyObject) {
       performSegue(withIdentifier: "rest", sender: nil)
    }
    
    
    @IBAction func buttonTapped6(_ sender: Any) {
        label.text = "卍勝ち取り単位卍！！！"
    }
    
    
    
    @IBAction func buttonTapped7(_ sender: AnyObject) {
        performSegue(withIdentifier: "map", sender: nil)
    }
    
}

