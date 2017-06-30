//
//  ViewController.swift
//  H5Test
//
//  Created by 冒亚东 on 2017/6/16.
//  Copyright © 2017年 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var webView:UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bounds = UIScreen.main.bounds
        let frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
        webView = UIWebView(frame: frame)
        webView.backgroundColor = UIColor.clear
        self.view.addSubview(webView)
        
        let loadHTML = UIButton(frame: CGRect(x: 40, y: 400, width: 240, height: 44))
        loadHTML.setTitle("加载HTML网页", for: UIControlState.init(rawValue: 0))
        loadHTML.backgroundColor = UIColor.brown
        loadHTML.addTarget(self, action: #selector(ViewController.loadHTML), for: .touchUpInside)
        
        self.view.addSubview(loadHTML)
    }

    func loadHTML() {
        let team = "<div style = 'color:#ff0000;font-size:20px;'>中南大学 冒亚东</div>"
        let tel = "<div>电话：15011122222</div>"
        let url = "<div><b>网址: https://www.baidu.com</b></div>"
        let html = team + tel + url
        webView.dataDetectorTypes = [UIDataDetectorTypes.link, UIDataDetectorTypes.phoneNumber]
        webView.loadHTMLString(html, baseURL: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    


}

