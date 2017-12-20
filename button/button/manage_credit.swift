//
//  manage_credit.swift
//  button
//
//  Created by 坂本昂弘 on 2017/12/14.
//  Copyright © 2017年 坂本昂弘. All rights reserved.
//

import UIKit

class manage_credit: UIViewController {
    var ky:Int = 2    //共通教育の単位数を入れる
    var ki:Int = 3 //専門基礎教育の単位数を入れる
    var se:Int = 4    //専門教育の単位数を入れる
    var to:Int =  0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        to = ky+ki+se
        //kyoutu.text = String(ky) + " / 32"
        //kiso.text = String(ki) + " / 8"
      //  senmon.text = String(se) + " / 85"
     //   total.text = String(to) + " / 125"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var kyoutu: UILabel!
    @IBOutlet weak var kiso: UILabel!
    @IBOutlet weak var senmon: UILabel!
    @IBOutlet weak var total: UILabel!
 
    
    
}
