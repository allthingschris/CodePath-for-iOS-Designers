//
//  FacebookTransition.swift
//  Facebook
//
//  Created by Christopher Ryan on 10/24/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class FacebookTransition: BaseTransition {
    
    var overlayView: UIView!
    var imageView: UIImageView!

    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        let tabViewController = fromViewController as! UITabBarController
        let navigationController = tabViewController.selectedViewController as! UINavigationController
        let newsFeedViewController = navigationController.topViewController as! NewsFeedViewController
        let photosViewController = toViewController as! PhotosViewController
        
        newsFeedViewController.selectedImageView.isHidden = true
        photosViewController.imageView.isHidden = true
        
        imageView = UIImageView()
        imageView.image = newsFeedViewController.selectedImageView.image
        let frame = containerView.convert(newsFeedViewController.selectedImageView.frame, from: newsFeedViewController.selectedImageView.superview)
        imageView.frame = frame
        imageView.contentMode = newsFeedViewController.selectedImageView.contentMode
        imageView.clipsToBounds = newsFeedViewController.selectedImageView.clipsToBounds
        
        containerView.addSubview(imageView)
        
        overlayView = UIView()
        overlayView.frame = CGRect(x: 0, y: 0, width: toViewController.view.frame.size.width, height: toViewController.view.frame.size.height)
        
        toViewController.view.alpha = 0
        
        overlayView.backgroundColor = UIColor(white: 0, alpha: 0)
        fromViewController.view.addSubview(overlayView)
        
        UIView.animate(withDuration: duration, animations: {
            toViewController.view.alpha = 1
            
            self.imageView.frame = photosViewController.imageView.frame
            self.overlayView.backgroundColor = UIColor(white: 0, alpha: 0.6)

            
        }) { (finished: Bool) -> Void in
            
            newsFeedViewController.selectedImageView.isHidden = false
            photosViewController.imageView.isHidden = false
            self.imageView.removeFromSuperview()
            
            self.finish()
        }
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
  
        let tabViewController = toViewController as! UITabBarController
        let navigationController = tabViewController.selectedViewController as! UINavigationController
        let newsFeedViewController = navigationController.topViewController as! NewsFeedViewController
        let photosViewController = fromViewController as! PhotosViewController
        
        newsFeedViewController.selectedImageView.isHidden = true
        photosViewController.imageView.isHidden = true
        
        imageView = UIImageView()
        imageView.image = photosViewController.imageView.image
        let frame = containerView.convert(photosViewController.imageView.frame, from: photosViewController.imageView.superview)
        imageView.frame = frame
        imageView.contentMode = photosViewController.imageView.contentMode
        imageView.clipsToBounds = photosViewController.imageView.clipsToBounds
        
        containerView.addSubview(imageView)
        
        fromViewController.view.alpha = 1
        UIView.animate(withDuration: duration, animations: {
            fromViewController.view.alpha = 0
            
            self.imageView.frame = newsFeedViewController.selectedImageView.frame

            self.overlayView.backgroundColor = UIColor(white: 0, alpha: 0)
            self.overlayView.removeFromSuperview()
            
        }) { (finished: Bool) -> Void in
            
            newsFeedViewController.selectedImageView.isHidden = false
            photosViewController.imageView.isHidden = false
            self.imageView.removeFromSuperview()
            
            self.finish()
        }
    }
    

}
