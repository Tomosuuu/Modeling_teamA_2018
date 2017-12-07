//
//  ViewController.swift
//  record_attend
//
//  Created by Tomotaka Yonaha on 2017/11/16.
//  Copyright © 2017年 Tomosuuu. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var show_count: UILabel!
  @IBOutlet weak var rest_attend: UILabel!
  @IBOutlet weak var absent_count: UILabel!
  
  var num:Int = 0
  var restnum:Int = 15
  var abnum:Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  func counter(){
    if (restnum == 1){
      rest_attend.text = String("この講義は終了しました。お疲れ様です。")
    }else{
      restnum -= 1
      rest_attend.text = String("この講義はあと") + String(restnum) +   String("回です")
    }
  }
  @IBAction func plus_attend(_ sender: AnyObject) {
    counter()
    if (num + abnum < 15){
    num += 1
    show_count.text = String("出席回数 : ") + String(num)
    }
  }
  @IBAction func absent_button(_ sender: AnyObject) {
    counter()
    if (num + abnum < 15){
    abnum += 1
    absent_count.text = String(abnum) + String("回欠席しました")
   }
  }
}
