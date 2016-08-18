//
//  ViewController.swift
//  WKwebview-test
//
//  Created by 李宝明 on 16/8/18.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView()
        container.addSubview(webView)
        
        print(container.bounds.width)
        
        
        
        
    }

    override func viewDidAppear(animated: Bool) {
        
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        
        webView.frame = frame
        
        
       loadRequest("http://www.apple.com/")

    }

    @IBAction func loadSwift(sender: AnyObject) {
        loadRequest("https://developer.apple.com/swift/blog/")
    }
    
    @IBAction func loadGossip(sender: AnyObject) {
        loadRequest("http://www.celebrity-gossip.net/")
    }
   
    
    @IBAction func loadSteak(sender: AnyObject) {
        loadRequest("http://www.thekitchn.com/how-to-cook-perfect-steak-in-the-oven-108490")
    }
    
    func loadRequest(reqStr: String){
        
        let request = NSURLRequest(URL: NSURL(string: reqStr)!)
        
        webView.loadRequest(request)
        
        
    }
}

