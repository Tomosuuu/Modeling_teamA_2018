//
//  ViewController.swift
//  alarm_teamA
//
//  Created by  岩永　竜也 on 2017/12/18.
//  Copyright © 2017年 shrtk. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        myLabel.text = getNowTime()
        _ = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(ViewController.update(_:)), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myDPvar: UIDatePicker!
    
    private var tempTime: String = "00:00"
    private var setTime: String = "00:00"
    
    @IBAction func myDPFunc(_ sender: Any) {
        print("test: myDP moved!")
        let format = DateFormatter()
        format.dateFormat = "HH:mm"
        tempTime = format.string(from: myDPvar.date)
    }
    
    @IBAction func myButtonFunc(_ sender: Any) {
        setTime = tempTime
        print("test: myButton Pushed!")
    }
    
    func getNowTime()-> String {
        let nowTime: Date = Date()
        let format = DateFormatter()
        format.dateFormat = "HH:mm"
        let nowTimeStr = format.string(from: nowTime as Date)
        return nowTimeStr
    }
    
    @objc func update(_: Timer) {
        let str = getNowTime()
        myLabel.text = str
        myAlarm(str: str)
    }
    
    func myAlarm(str: String) {
        if str == setTime{
            alert()
        }
    }
    
    func alert() {
        let myAlert = UIAlertController(title: "alert", message: "ring ding", preferredStyle: .alert)
        AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
        let myAction = UIAlertAction(title: "dong",style: .default) {
            action in print("foo!!")
        }
        myAlert.addAction(myAction)
        present(myAlert, animated: true,completion: nil)
        
    }
}

