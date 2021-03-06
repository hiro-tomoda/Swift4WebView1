//
//  WebView2Controller.swift
//  Swift4WebView1
//
//  Created by yuwa on 2018/04/07.
//  Copyright © 2018年 yuwa. All rights reserved.
//

import UIKit

class WebView2Controller: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.delegate = self
        
        let url = URL(string: "https://www.mbga.jp/")
        let urlRequest = URLRequest(url: url!)
        webView.loadRequest(urlRequest)
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
