//
//  FeedViewController.swift
//  Facebook
//
//  Created by Christopher Ryan on 9/23/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var FeedScrollView: UIScrollView!
    @IBOutlet weak var FeedImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FeedScrollView.contentSize = FeedImageView.frame.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
