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
        
        screenOffset = 500
        
        textButton.center = CGPoint(x: textButtonFinalCenter.x, y: textButtonFinalCenter.y - screenOffset)
        
        print(textButton.center)
        print(textButtonFinalCenter)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 0.5) { () -> Void in
            
            self.textButton.frame.origin.y = self.textButtonFinalCenter.y
            
            print(self.textButtonFinalCenter)
        
            
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
