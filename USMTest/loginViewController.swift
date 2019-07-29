//
//  loginViewController.swift
//  USM Alkesmata
//
//  Created by LaWave Design on 1/30/19.
//  Copyright © 2019 Universal Star Multilink. All rights reserved.
//

import UIKit
import WebKit

class loginViewController: UIViewController, WKUIDelegate, WKNavigationDelegate  {

    @IBOutlet weak var webView: WKWebView!
    
    var optPassed = Int()
    var webAdd = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if optPassed == 1 {
            webAdd = "https://usm-alkesmata.com/login"
        } else {
            webAdd = "https://usm-alkesmata.com"
        }
        
        let myURL = URL(string: webAdd)
        let myRequest = URLRequest(url: myURL!)
        
        webView.load(myRequest)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
}
