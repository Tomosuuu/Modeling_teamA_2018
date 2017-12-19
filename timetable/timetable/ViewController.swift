//
//  ViewController.swift
//  timetable
//
//  Created by Tomotaka Yonaha on 2017/12/07.
//  Copyright © 2017年 Tomosuuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
  @IBAction func goBack(_ segue:UIStoryboardSegue) {
  }
  @IBAction func goNextBySegue(_ sender:UIButton) {
    let button = sender.titleLabel?.attributedText
    if(button != nil){
      performSegue(withIdentifier: "nextSegue", sender: nil)
    }
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
