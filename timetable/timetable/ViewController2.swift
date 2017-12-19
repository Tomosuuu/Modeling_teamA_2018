//
//  ViewController2.swift
//  timetable
//
//  Created by Tomotaka Yonaha on 2017/12/14.
//  Copyright © 2017年 Tomosuuu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController{
  var c1:Int = 0, c2 : Int = 0, c3 : Int = 0, c4 : Int = 0, c5 : Int = 0, c6 : Int = 0, c7 : Int = 0, c8 : Int = 0, c9 : Int = 0, c10 : Int = 0, c11 : Int = 0, c12 : Int = 0, c13 : Int = 0, c14 : Int = 0, c15 : Int = 0
  @IBAction func pushButton(_ sender: Any) {
    let b:UIButton = sender as! UIButton
    func button(m : Int){
      var p = m
      p += 1
      if(p == 2){
        b.backgroundColor = UIColor.red
        b.setTitle("欠席", for: .normal)
      }else if(p == 1){
        b.backgroundColor = UIColor.green
        b.setTitle("遅刻", for: .normal)
      }else{
        b.backgroundColor = UIColor.white
        b.setTitle("出席", for: .normal)
      }
    }
    switch b.tag {
    case 1:
      button(m: c1)
        c1 += 1
      if(c1 > 2){c1 = 0}
    case 2:
      button(m: c2)
      c2 += 1
      if(c2 > 2){c2 = 0}
    case 3:
      button(m: c3)
      c3 += 1
      if(c3 > 2){c3 = 0}
    case 4:
      button(m: c4)
      c4 += 1
      if(c4 > 2){c4 = 0}
    case 5:
      button(m: c5)
      c5 += 1
      if(c5 > 2){c5 = 0}
    case 6:
      button(m: c6)
      c6 += 1
      if(c6 > 2){c6 = 0}
    case 7:
      button(m: c7)
      c7 += 1
      if(c7 > 2){c7 = 0}
    case 8:
      button(m: c8)
      c8 += 1
      if(c8 > 2){c8 = 0}
    case 9:
      button(m: c9)
      c9 += 1
      if(c9 > 2){c9 = 0}
    case 10:
      button(m: c10)
      c10 += 1
      if(c10 > 2){c10 = 0}
    case 11:
      button(m: c11)
      c11 += 1
      if(c11 > 2){c11 = 0}
    case 12:
      button(m: c12)
      c12 += 1
      if(c12 > 2){c12 = 0}
    case 13:
      button(m: c13)
      c13 += 1
      if(c13 > 2){c13 = 0}
    case 14:
      button(m: c14)
      c14 += 1
      if(c14 > 2){c14 = 0}
    case 15:
      button(m: c15)
      c15 += 1
      if(c15 > 2){c15 = 0}
    default:
      break
    }
  }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
