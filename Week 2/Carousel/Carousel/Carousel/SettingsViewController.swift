//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Christopher Ryan on 10/1/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var settingsImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        settingsScrollView.contentSize = settingsImageView.frame.size
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissSettings(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
        
    }

    @IBAction func didSignOut(_ sender: AnyObject) {

        let alert = UIAlertController(title: nil, message: "Are you sure you want to sign out?", preferredStyle: .actionSheet)
        
        let logoutAction = UIAlertAction(title: "Log Out", style: .destructive) { (action) in
            // handle case of user logging out
            
            self.performSegue(withIdentifier: "restartSegue", sender: nil)
            
        }
        // add the logout action to the alert controller
        alert.addAction(logoutAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            // handle case of user canceling. Doing nothing will dismiss the view.
        }
        // add the cancel action to the alert controller
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: {})
        
                
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
