//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Christopher Ryan on 9/30/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var tutorialPageControl: UIPageControl!
    @IBOutlet weak var tutorialScrollView: UIScrollView!
    @IBOutlet weak var spinButton: UIButton!
    @IBOutlet weak var backupButton: UIImageView!
    @IBOutlet weak var backupSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tutorialScrollView.contentSize = CGSize(width:1280, height: 320)
        tutorialScrollView.delegate = self
        
        tutorialPageControl.numberOfPages = 4
        tutorialPageControl.alpha = 1
        
        backupButton.alpha = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        self.tutorialPageControl.currentPage = page
        
        if tutorialPageControl.currentPage == 3 {
            UIView.animate(withDuration: 0.3){
                self.tutorialPageControl.alpha = 0
                self.backupButton.alpha = 1
                self.backupSwitch.alpha = 1
            }
        } else {
            UIView.animate(withDuration: 0.3){
                self.tutorialPageControl.alpha = 1
                self.backupButton.alpha = 0
                self.backupSwitch.alpha = 0
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
