//
//  PhotosViewController.swift
//  Facebook
//
//  Created by Christopher Ryan on 10/24/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet weak var photosScrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var photoActionsBar: UIImageView!
    @IBOutlet weak var doneButton: UIButton!
    
    var image: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        photosScrollView.contentSize = photosScrollView.frame.size
        imageView.image = image


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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
