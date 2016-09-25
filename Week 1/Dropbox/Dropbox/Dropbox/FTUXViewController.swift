//
//  FTUXViewController.swift
//  Dropbox
//
//  Created by Christopher Ryan on 9/25/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class FTUXViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var FTUXPageControl: UIPageControl!
    @IBOutlet weak var FTUXScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        FTUXScrollView.contentSize = CGSize(width: 960, height: 568)
        FTUXScrollView.delegate = self
        
        FTUXPageControl.numberOfPages = 3
        FTUXPageControl.currentPageIndicatorTintColor = UIColor(red: (0/255.0), green: (126/255.0), blue: (229/255.0), alpha: 1.0)
        FTUXPageControl.pageIndicatorTintColor = UIColor(red: (183/255.0), green: (219/255.0), blue: (248/255.0), alpha: 1.0)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        FTUXPageControl.currentPage = page
  
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
