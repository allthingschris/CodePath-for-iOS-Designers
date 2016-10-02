//
//  TermsViewController.swift
//  Carousel
//
//  Created by Christopher Ryan on 10/2/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {
    @IBOutlet weak var tosWebView: UIWebView!
    
    let url = "https://www.dropbox.com/terms?mobile=1"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Convert the url String to a NSURL object.
        let requestURL = NSURL(string:url)
        // Place the URL in a URL Request.
        let request = NSURLRequest(url: requestURL! as URL)
        // Load Request into WebView.
        tosWebView.loadRequest(request as URLRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressDone(_ sender: AnyObject) {
 
        dismiss(animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
