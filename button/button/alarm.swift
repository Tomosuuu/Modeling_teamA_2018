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

class alarm: UIViewController {
    
    var audioPlayerInstance : AVAudioPlayer! = nil
    
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
        let myAlert = UIAlertController(title: "alert", message: "設定時刻になりました", preferredStyle: .alert)
        AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
        audioPlayerInstance.play()
        let myAction = UIAlertAction(title: "アラームを止める",style: .default) {
            action in print("アラームを止める")
            self.audioPlayerInstance.stop()
        }
        myAlert.addAction(myAction)
        present(myAlert, animated: true,completion: nil)
        
    }
}
