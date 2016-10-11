//
//  ArchiveViewController.swift
//  Mailbox
//
//  Created by Christopher Ryan on 10/10/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class ArchiveViewController: UIViewController {
 
    @IBOutlet weak var segmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapSegmentedControl(_ sender: AnyObject) {
        
        switch segmentedControl.selectedSegmentIndex
            
        {
        case 0:
            print("Later View")
        case 1:
            print("Inbox View")
        case 2:
            print("Archived View")
        default:
            break;
        }
        
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
