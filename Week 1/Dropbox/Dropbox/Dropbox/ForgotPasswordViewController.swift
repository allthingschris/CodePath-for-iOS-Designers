//
//  ForgotPasswordViewController.swift
//  Dropbox
//
//  Created by Christopher Ryan on 9/24/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func troubleSigningAction(_ sender: AnyObject) {
        
        presentSimpleActionSheet(buttons:["Forgot Password":nil, "Single Sign-On":nil]);
        
    }

    
    @IBAction func didTapKeyboardDismiss(_ sender: AnyObject) {
        
        view.endEditing(true)
        
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
