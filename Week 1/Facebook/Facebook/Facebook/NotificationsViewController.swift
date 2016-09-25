//
//  NotificationsViewController.swift
//  Facebook
//
//  Created by Christopher Ryan on 9/23/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController {

    @IBOutlet weak var NotificationsScrollView: UIScrollView!
    @IBOutlet weak var NotificationsImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationsScrollView.contentSize = NotificationsImageView.frame.size

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
