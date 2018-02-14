//
//  timetable.swift
//  button
//
//  Created by 坂本昂弘 on 2018/02/14.
//  Copyright © 2018年 坂本昂弘. All rights reserved.
//

import Foundation
import UIKit

class timetable_controller: UIViewController {
    @IBAction func goBack(_ segue:UIStoryboardSegue) {}
    
    @IBAction func goNextBySegue(_ sender:UIButton) {
        let b = sender.titleLabel?.attributedText
        if(b == nil){
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
        else{
            let alert_b = UIAlertController(title: "選択", message: "講義名を変更しますか？出席確認を行いますか？", preferredStyle: .alert)
            let changeAction = UIAlertAction(title: "講義名変更", style: .default){
                (action:UIAlertAction!) -> Void in
                
                
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
                
                self.present(alert, animated: true, completion: nil)
                
                
            }
            let checkAction = UIAlertAction(title: "出席確認", style: .default) { (action:UIAlertAction!) -> Void in
                self.performSegue(withIdentifier: "attend_check", sender: nil)
            }
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (action:UIAlertAction!) -> Void in
            }
            
            alert_b.addAction(changeAction)
            alert_b.addAction(checkAction)
            alert_b.addAction(cancelAction)
            
            present(alert_b, animated: true, completion: nil)
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
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

