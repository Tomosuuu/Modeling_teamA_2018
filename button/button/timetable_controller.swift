//
//  timetable_controller.swift
//  button
//
//  Created by Tomotaka Yonaha on 2018/02/14.
//  Copyright © 2018年 坂本昂弘. All rights reserved.
//

import UIKit

class timetable_controller: UIViewController {
  @IBAction func goNextBySegue(_ sender:UIButton) {
      let alert = UIAlertController(title: "講義名", message: "講義名を入力してください", preferredStyle: .alert)
      let saveAction = UIAlertAction(title: "Done", style: .default){
        (action:UIAlertAction!) -> Void in
        let textField = alert.textFields![0] as UITextField
        sender.setTitle(textField.text, for: .normal)
      }
      let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (action:UIAlertAction!) -> Void in
      }
      alert.addTextField { (textField:UITextField!) -> Void in
      }
      alert.addAction(saveAction)
      alert.addAction(cancelAction)
      
      present(alert, animated: true, completion: nil)
    }
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
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
