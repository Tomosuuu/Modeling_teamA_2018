//
//  Web.swift
//  button
//
//  Created by 坂本昂弘 on 2018/02/14.
//  Copyright © 2018年 坂本昂弘. All rights reserved.
//

import Foundation

import UIKit

class Web: UIViewController {
    
    @IBAction func goBack(_ segue:UIStoryboardSegue) {}
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let favoriteURL = NSURL(string: "https://tiglon.jim.u-ryukyu.ac.jp/Portal/Public/Lecture/board.aspx")
        // stringにはお好きなurlを入れてください。
        
        let urlRequest = NSURLRequest(url: favoriteURL! as URL)
        // urlをネットワーク接続が可能な状態にしている
        
        webView.loadRequest(urlRequest as URLRequest)
        // 実際にwebViewにurlからwebページを引っ張ってくる。
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
