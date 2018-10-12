//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Anders Uppsäll on 2018-10-11.
//  Copyright © 2018 Anders Uppsäll. All rights reserved.
//

import UIKit
import WebKit


class AboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            webView.load(request)
        }

    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

}
