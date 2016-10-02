//
//  LoginViewController.swift
//  Carousel
//
//  Created by Christopher Ryan on 9/30/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signinActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var loginNavBar: UIImageView!
    @IBOutlet weak var fieldParentView: UIView!
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loginScrollView.delegate = self
        
        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 120

        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -90
        
        signinActivityIndicator.isHidden = true
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to display
 
            self.keyboardWillShow()
            
        }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to hide
            
            self.keyboardWillHide()
            
        }
        
    }

    override func viewWillAppear(_ animated: Bool) {
        let transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        loginNavBar.transform = transform
        fieldParentView.transform = transform
        loginNavBar.alpha = 0
        fieldParentView.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3) { () -> Void in
            
            self.fieldParentView.transform = CGAffineTransform.identity
            self.loginNavBar.transform = CGAffineTransform.identity
            self.fieldParentView.alpha = 1
            self.loginNavBar.alpha = 1
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func keyboardWillShow(){
        print("keyboardWillShow")
        //Move the button up above the keyboard
        self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
        
        //Scoll the scrollview up
        self.loginScrollView.contentOffset.y = self.loginScrollView.contentInset.bottom
    }
    
    func keyboardWillHide(){
        
        self.loginScrollView.contentOffset.y = self.loginScrollView.contentInset.top
        
        self.buttonParentView.frame.origin.y = self.buttonInitialY
        
    }
    
    
    @IBAction func didPressSignin(_ sender: AnyObject) {

        signinActivityIndicator.isHidden = false
        
        // Start animating the indicator
        signinActivityIndicator.startAnimating()
        
        // Disable the button to prevent more clicks
        signInButton.isEnabled = false
        
        self.login()

    }
    
    func login(){
 
        if (emailField.text == "chris@allthingschris.com" && passwordField.text == "teddybear") {
            
            everythingGood()
            
        } else if emailField.text!.isEmpty && passwordField.text!.isEmpty {
            
            everythingEmpty()
            
        } else if emailField.text!.isEmpty {
            
            emptyEmail()
            
        } else if passwordField.text!.isEmpty {
            
            emptyPassword()
            
        } else {
            
            incorrectLogin()
            
        }
        
    }
    
    func everythingGood(){
        
        delay(2){
            self.stopSpinner()
            self.performSegue(withIdentifier: "tutorialSegue", sender: self)
        }
        
    }
    
    func everythingEmpty(){
        
        self.stopSpinner()
        
        let alert = UIAlertController(title: "Email and Password Required", message: "Please enter your email address and password.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) in })
        
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: {})
        
    }
    
    func emptyEmail(){
        
        self.stopSpinner()
        
        let alert = UIAlertController(title: "Email Required", message: "Please enter your email address.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) in })
        
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: {})
        
    }
    
    func emptyPassword(){
        
        self.stopSpinner()
        
        let alert = UIAlertController(title: "Password Required", message: "Please enter your password.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) in })
        
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: {})
        
    }
    
    func incorrectLogin(){
        
        delay(2){
            
            self.stopSpinner()
            
            let alert = UIAlertController(title: "Incorrect email address or password.", message: "Please enter a correct email address and password.", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) in })
            
            alert.addAction(okAction)
            
            self.present(alert, animated: true, completion: {})
            
        }
        
    }
    
    func stopSpinner(){
        
        self.signinActivityIndicator.stopAnimating()
        self.signinActivityIndicator.isHidden = true
        self.signInButton.isEnabled = true
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView){
        
        if loginScrollView.contentOffset.y <= -50 {
            
            view.endEditing(true)
            
    
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
