//
//  ImageTimelineViewController.swift
//  Carousel
//
//  Created by Christopher Ryan on 10/1/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class ImageTimelineViewController: UIViewController {
  
    @IBOutlet weak var imageScrollView: UIScrollView!
    @IBOutlet weak var feedImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        imageScrollView.contentSize = feedImageView.frame.size
        
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
