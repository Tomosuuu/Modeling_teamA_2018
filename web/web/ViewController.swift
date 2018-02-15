//
//  ViewController.swift
//  web
//
//  Created by NAGAMINE on 2018/02/14.
//  Copyright © 2018年 Unive of the Ryukyu. All rights reserved.
//

import UIKit

class Web: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let favoriteURL = NSURL(string: "https://tiglon.jim.u-ryukyu.ac.jp/Portal/Public/Lecture/board.aspx")
        // stringにはお好きなurlを入れてください。
        
        let urlRequest = NSURLRequest(url: favoriteURL! as URL)
        // urlをネットワーク接続が可能な状態にしている（らしい）
        
        webView.loadRequest(urlRequest as URLRequest)
        // 実際にwebViewにurlからwebページを引っ張ってくる。
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

