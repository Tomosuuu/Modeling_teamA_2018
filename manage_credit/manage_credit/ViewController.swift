//
//  ViewController.swift
//  manage_credit
//
//  Created by Tomotaka Yonaha on 2017/12/06.
//  Copyright © 2017年 Tomosuuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
  
  @IBOutlet weak var textField1: UITextField!
  @IBOutlet weak var textField2: UITextField!
  @IBOutlet weak var textField3: UITextField!
  
  var pickerView1: UIPickerView = UIPickerView()
  var array1 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32]
  
  var pickerView2: UIPickerView = UIPickerView()
  var array2 = [1,2,3,4,5,6,7,8]
  
  var pickerView3: UIPickerView = UIPickerView()
  var array3 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,51,52,53,54,55,56,57,58,59,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //pickerView1
    pickerView1.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: pickerView1.bounds.size.height)
    pickerView1.tag = 1             // <<<<<<<<<<　追加
    pickerView1.delegate   = self
    pickerView1.dataSource = self
    
    let vi1 = UIView(frame: pickerView1.bounds)
    vi1.backgroundColor = UIColor.white
    vi1.addSubview(pickerView1)
    
    textField1.inputView = vi1
    
    let toolBar1 = UIToolbar()
    toolBar1.barStyle = UIBarStyle.default
    toolBar1.isTranslucent = true
    toolBar1.tintColor = UIColor.black
    let doneButton1   = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.done, target: self, action: #selector(ViewController.donePressed))
    let spaceButton1  = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
    toolBar1.setItems([spaceButton1, doneButton1], animated: false)
    toolBar1.isUserInteractionEnabled = true
    toolBar1.sizeToFit()
    textField1.inputAccessoryView = toolBar1
    
    //pickerView2
    pickerView2.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: pickerView2.bounds.size.height)
    pickerView2.tag = 2             // <<<<<<<<<<　追加
    pickerView2.delegate   = self
    pickerView2.dataSource = self
    
    let vi2 = UIView(frame: pickerView2.bounds)
    vi2.backgroundColor = UIColor.white
    vi2.addSubview(pickerView2)
    
    textField2.inputView = vi2
    
    let toolBar2 = UIToolbar()
    toolBar2.barStyle = UIBarStyle.default
    toolBar2.isTranslucent = true
    toolBar2.tintColor = UIColor.black
    let doneButton2   = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.done, target: self, action: #selector(ViewController.donePressed))
    let spaceButton2  = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
    toolBar2.setItems([spaceButton2, doneButton2], animated: false)
    toolBar2.isUserInteractionEnabled = true
    toolBar2.sizeToFit()
    textField2.inputAccessoryView = toolBar2
  
  //pickerView3
  pickerView3.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: pickerView3.bounds.size.height)
  pickerView3.tag = 3             // <<<<<<<<<<　追加
  pickerView3.delegate   = self
  pickerView3.dataSource = self
  
  let vi3 = UIView(frame: pickerView3.bounds)
  vi3.backgroundColor = UIColor.white
  vi3.addSubview(pickerView3)
  
  textField3.inputView = vi3
  
  let toolBar3 = UIToolbar()
  toolBar3.barStyle = UIBarStyle.default
  toolBar3.isTranslucent = true
  toolBar3.tintColor = UIColor.black
  let doneButton3   = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.done, target: self, action: #selector(ViewController.donePressed))
  let spaceButton3  = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
  toolBar3.setItems([spaceButton3, doneButton3], animated: false)
  toolBar3.isUserInteractionEnabled = true
  toolBar3.sizeToFit()
  textField3.inputAccessoryView = toolBar3
}
  
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  @objc func donePressed() {
    view.endEditing(true)
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    if pickerView.tag == 1 {    // <<<<<<<<<<　変更
      return String(array1[row])
    } else if pickerView.tag == 2{
      return String(array2[row])
    } else {
      return String(array3[row])
    }
  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    if pickerView.tag == 1 {     // <<<<<<<<<<　変更
      return array1.count
    } else if pickerView.tag == 2 {
      return array2.count
    } else {
      return array3.count
    }
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    if pickerView.tag == 1 {      // <<<<<<<<<<　変更
      textField1.text = String(array1[row])  + " / 32"
      ky = array1[row]
    } else if pickerView.tag == 2 {
      textField2.text = String(array2[row])  + " / 8"
      ki = array2[row]
    } else {
      textField3.text = String(array3[row]) + " / 85"
      se = array3[row]
    }
    total.text = String(ky + ki + se) + " / 125"
  }
  var ky : Int = 0
  var ki : Int = 0
  var se : Int = 0
  //@IBOutlet weak var kyoutu: UILabel!
  
  @IBOutlet weak var total: UILabel!
  
  
  
}

