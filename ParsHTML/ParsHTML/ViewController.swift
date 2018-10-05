//
//  ViewController.swift
//  ParsHTML
//
//  Created by 1 on 05.10.2018.
//  Copyright © 2018 Papa. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func displayURL() {
        let myURLAdress = "https://swiftbook.ru/"
        
        guard let url = URL(string: myURLAdress) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
           // guard let data = data else {return}
            
            do {
                
                let myHTMLString = String(data: data!, encoding: String.Encoding.utf8)
                
                self.myWebView.loadHTMLString(myHTMLString!, baseURL: nil)
                print(myHTMLString as Any)
                
            }
            
            } .resume()
}

}
