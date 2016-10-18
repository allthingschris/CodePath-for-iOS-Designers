//
//  ViewController.swift
//  Tumblr
//
//  Created by Christopher Ryan on 10/17/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewController(withIdentifier: "home")
        searchViewController = storyboard.instantiateViewController(withIdentifier: "search")
        accountViewController = storyboard.instantiateViewController(withIdentifier: "account")
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "trending")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressTab(_ sender: UIButton) {
        
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        buttons[previousIndex].isSelected = false
        
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.isSelected = true
        
        let vc = viewControllers[selectedIndex]
        
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        vc.didMove(toParentViewController: self)
        
    }

    
}

