//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Christopher Ryan on 10/17/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var textButtonFinalCenter: CGPoint!
    var photoButtonFinalCenter: CGPoint!
    var quoteButtonFinalCenter: CGPoint!
    var linkButtonFinalCenter: CGPoint!
    var chatButtonFinalCenter: CGPoint!
    var videoButtonFinalCenter: CGPoint!
    var screenOffset: CGFloat!
    var screenOffset2: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        textButtonFinalCenter = textButton.center
        photoButtonFinalCenter = photoButton.center
        quoteButtonFinalCenter = quoteButton.center
        linkButtonFinalCenter = linkButton.center
        chatButtonFinalCenter = chatButton.center
        videoButtonFinalCenter = videoButton.center
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didNevermind(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        screenOffset = 450
        screenOffset2 = 900
        
        textButton.center = CGPoint(x: textButtonFinalCenter.x, y: textButtonFinalCenter.y + screenOffset)
        photoButton.center = CGPoint(x: photoButtonFinalCenter.x, y: photoButtonFinalCenter.y + screenOffset2)
        quoteButton.center = CGPoint(x: quoteButtonFinalCenter.x, y: quoteButtonFinalCenter.y + screenOffset)
        linkButton.center = CGPoint(x: linkButtonFinalCenter.x, y: linkButtonFinalCenter.y + screenOffset2)
        chatButton.center = CGPoint(x: chatButtonFinalCenter.x, y: chatButtonFinalCenter.y + screenOffset)
        videoButton.center = CGPoint(x: videoButtonFinalCenter.x, y: videoButtonFinalCenter.y + screenOffset2)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration:0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.textButton.center.y = self.textButtonFinalCenter.y
            self.quoteButton.center.y = self.quoteButtonFinalCenter.y
            self.chatButton.center.y = self.chatButtonFinalCenter.y
            
            }, completion: nil)
        
        UIView.animate(withDuration:0.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.photoButton.center.y = self.photoButtonFinalCenter.y
            self.linkButton.center.y = self.linkButtonFinalCenter.y
            self.videoButton.center.y = self.videoButtonFinalCenter.y
            
            }, completion: nil)
        
        
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
