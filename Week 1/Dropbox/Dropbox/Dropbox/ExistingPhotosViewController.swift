//
//  ExistingPhotosViewController.swift
//  Dropbox
//
//  Created by Christopher Ryan on 9/25/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class ExistingPhotosViewController: UIViewController {
    
    @IBOutlet weak var ExistingPhotosScrollView: UIScrollView!
    @IBOutlet weak var ExistingPhotosImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ExistingPhotosScrollView.contentSize = ExistingPhotosImageView.frame.size

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
