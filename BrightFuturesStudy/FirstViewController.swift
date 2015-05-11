//
//  FirstViewController.swift
//  BrightFuturesStudy
//
//  Created by adachi.yuichi on 2015/05/11.
//  Copyright (c) 2015年 yad. All rights reserved.
//

import UIKit
import BrightFutures

typealias DataHandler = ((NSData?, NSError?) -> ())

func dataWithError(handler: DataHandler) {
    let url = "http://sample.jp/data"
    let request = NSURLRequest(URL: NSURL(string: url)!)
    NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue())
    { response, data, error in
        if error != nil {
            handler(nil, error)
        } else {
            handler(data, nil)
        }
    }
}

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

