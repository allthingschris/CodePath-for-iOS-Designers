//
//  CreateViewController.swift
//  Carousel
//
//  Created by Christopher Ryan on 10/1/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var createNavBar: UIImageView!
    @IBOutlet weak var createText: UIImageView!
    @IBOutlet weak var createForm: UIImageView!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var createScrollView: UIScrollView!
    @IBOutlet weak var checkBoxButton: UIButton!
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        createScrollView.delegate = self
        
        createScrollView.contentSize = createScrollView.frame.size
        createScrollView.contentInset.bottom = 80
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -20
        
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to display
            
            self.keyboardWillShow()
            
        }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to hide
            
            self.keyboardWillHide()
            
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
        self.createScrollView.contentOffset.y = self.createScrollView.contentInset.bottom
        
    }
    
    func keyboardWillHide(){
        
        self.createScrollView.contentOffset.y = self.createScrollView.contentInset.top
        
        self.buttonParentView.frame.origin.y = self.buttonInitialY
        
    }
    
    @IBAction func termsCheckBox(_ sender: AnyObject) {
        checkBoxButton.isSelected = !checkBoxButton.isSelected
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
