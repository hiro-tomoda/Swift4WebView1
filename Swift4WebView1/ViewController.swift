//
//  ViewController.swift
//  Swift4WebView1
//
//  Created by yuwa on 2018/04/07.
//  Copyright © 2018年 yuwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        
        let url = URL(string: "https://www.yahoo.co.jp")
        let urlRequest = URLRequest(url: url!)
        webView.loadRequest(urlRequest)
        
        var test: String? = "オプショナル型テスト"
        var test2: String?
        
        print(test)
        print(test!)
        print(test?.append("2"))
        if let work = test {
            print(work)
        } else {
            print("NIL")
        }
        if let work2 = test2 {
            print(work2)
        } else {
            print("NIL")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func webViewDidStartLoad(_ webView: UIWebView) {
        // インディケーター開始
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        // インディケーター終了
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    
    
}

