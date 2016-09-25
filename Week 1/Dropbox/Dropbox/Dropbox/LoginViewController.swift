//
//  LoginViewController.swift
//  Dropbox
//
//  Created by Christopher Ryan on 9/25/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let weakImage = UIImage(named: "signup_1")
    let soSoImage = UIImage(named: "signup_2")
    let goodImage = UIImage(named: "signup_3")
    let greatImage = UIImage(named: "signup_4")
    
    @IBOutlet weak var passwordStrengthImageView: UIImageView!
    @IBOutlet weak var passwordTextField: UITextField!

    var characterCount:Int{return (passwordTextField.text?.characters.count)! }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //  NotificationCenter.default.addObserver(self, selector: Selector(("keyboardWillShow:")), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTap(_ sender: AnyObject) {
        
        view.endEditing(true)
        
    }

    @IBAction func passwordStrengthAction(_ sender: AnyObject) {
        
        if characterCount < 4 {
            print("weak password")
            passwordStrengthImageView.image = weakImage
            // Set image to weak image
        } else if characterCount < 6 {
            print("So-So password")
            passwordStrengthImageView.image = soSoImage
            // set image to soso image
        } else if characterCount < 8 {
            print("Good password")
            passwordStrengthImageView.image = goodImage
            // set image to good image
        } else {
            print("Great! Password")
            passwordStrengthImageView.image = greatImage
            // set image to great image
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
