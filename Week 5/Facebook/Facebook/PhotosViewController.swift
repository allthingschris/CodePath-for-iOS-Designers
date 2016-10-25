//
//  PhotosViewController.swift
//  Facebook
//
//  Created by Christopher Ryan on 10/24/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var photosScrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var photoActionsBar: UIImageView!
    @IBOutlet weak var doneButton: UIButton!
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photosScrollView.contentSize = CGSize(width: 320, height: 569)
        photosScrollView.delegate = self
        imageView.image = image
        
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        
        doneButton.alpha = 1
        photoActionsBar.alpha = 1
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTappingDone(_ sender: AnyObject) {
        
        self.doneButton.isHidden = true
        self.photoActionsBar.isHidden = true
        dismiss(animated: true, completion: nil)
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // This method is called as the user scrolls
        
    }
    
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        
        UIView.animate(withDuration: 0.5) { () -> Void in
            self.doneButton.alpha = 0
            self.photoActionsBar.alpha = 0
            self.view.backgroundColor = UIColor(white: 0, alpha: 0)
        }
        
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        // This method is called right as the user lifts their finger
        let scrollOffset = scrollView.contentOffset.y
        
        
        if scrollOffset < -100 {
            dismiss(animated: true, completion: nil)
        } else {
            
            UIView.animate(withDuration: 0.5) { () -> Void in
                self.doneButton.alpha = 1
                self.photoActionsBar.alpha = 1
                self.view.backgroundColor = UIColor(white: 0, alpha: 1)
            }
            
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
