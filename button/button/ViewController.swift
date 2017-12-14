//
//  ViewController.swift
//  button
//
//  Created by 坂本昂弘 on 2017/11/16.
//  Copyright © 2017年 坂本昂弘. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "タイトル"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        //以下ボタンのコード
    @IBAction func buttonTapped1(_ sender: Any) {
        label.text = "時間割表"
    }
    
    
    @IBAction func buttonTapped2(_ sender: Any) {
        label.text = "取得単位"
    }
    
   
    @IBAction func buttonTapped3(_ sender: Any) {
        label.text = "欠席理由の作成"
    }
    
    
    @IBAction func buttonTapped4(_ sender: Any) {
        label.text = "休講情報"
    }
    
    
    @IBAction func buttonTapped5(_ sender: Any) {
        label.text = "アラーム"
    }
    
    
    
    @IBAction func buttonTapped6(_ sender: Any) {
        label.text = "琉大MAP"
    }
    
}

