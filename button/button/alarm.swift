//
//  alarm.swift
//  button
//
//  Created by  岩永　竜也 on 2018/01/25.
//  Copyright © 2018年 坂本昂弘. All rights reserved.
//

import Foundation
import UIKit
import AudioToolbox
import AVFoundation

var audioPlayerInstance : AVAudioPlayer! = nil

class alarm: UIViewController {
    
    
     @IBAction func goBack(_ segue:UIStoryboardSegue) {}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let soundFilePath = Bundle.main.path(forResource: "8524", ofType: "mp3")!
        let sound:URL = URL(fileURLWithPath: soundFilePath)
        // AVAudioPlayerのインスタンスを作成
        do {
            audioPlayerInstance = try AVAudioPlayer(contentsOf: sound, fileTypeHint:nil)
        } catch {
            print("AVAudioPlayerインスタンス作成失敗")
        }
        // バッファに保持していつでも再生できるようにする
        audioPlayerInstance.prepareToPlay()
        
        myLabel.text = getNowTime()
        _ = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(alarm.update(_:)), userInfo: nil, repeats: true)
    }
    
    override func viewDidAppear(_ animated:Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppearが動いている")
        if aaa.bool(forKey: "alarm") {
            alert()
            print("aaa is true")
        }
        
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
        aaa.set(true, forKey: "alarm")
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
            aaa.set(true, forKey:"alarm")
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            audioPlayerInstance.play()
            alert()
            print("myAlarm is moved")
        }
    }
    
    func audioStop() {
        audioPlayerInstance.stop()
    }
    
    func alert() {
        let myAlert = UIAlertController(title: "alert", message: "設定時刻になりました", preferredStyle: .alert)
        
        let myAction = UIAlertAction(title: "アラームを止める",style: .default) {
            action in print("アラームを止める")
            self.audioStop()
            aaa.set(false, forKey: "alarm")
        }
        myAlert.addAction(myAction)
        present(myAlert, animated: true,completion: nil)
        
    }
}
