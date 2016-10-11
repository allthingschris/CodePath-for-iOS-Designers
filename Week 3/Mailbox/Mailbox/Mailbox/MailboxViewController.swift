//
//  MailboxViewController.swift
//  Mailbox
//
//  Created by Christopher Ryan on 10/8/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class MailboxViewController: UIViewController {

    @IBOutlet weak var swipeView: UIView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var messagesScrollView: UIScrollView!
    @IBOutlet weak var messageView: UIImageView!
    @IBOutlet weak var feedView: UIImageView!
    @IBOutlet weak var rescheduleView: UIImageView!
    @IBOutlet weak var listSuperView: UIView!
    @IBOutlet weak var superView: UIView!
    @IBOutlet weak var rescheduleSuperView: UIView!
    @IBOutlet weak var viewSegmentedControl: UISegmentedControl!
    @IBOutlet weak var allViewScrollView: UIScrollView!
    
    var messageViewOriginalCenter: CGPoint!
    
    let redColor = UIColor(red: 235/255, green: 84/255, blue: 51/255, alpha: 1)
    let grayColor = UIColor(red: 227/255, green: 227/255, blue: 227/255, alpha: 1)
    let greenColor = UIColor(red: 112/255, green: 216/255, blue: 98/255, alpha: 1)
    let yellowColor = UIColor(red: 250/227, green: 211/227, blue: 51/227, alpha: 1)
    let brownColor = UIColor(red: 216/255, green: 165/255, blue: 117/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        messagesScrollView.contentSize = CGSize(width: 320, height: 1380)
        
        allViewScrollView.contentSize = CGSize(width: 960, height: 504)
        
        leftImageView.alpha = 0
        rightImageView.alpha = 0
        
        messageViewOriginalCenter = messageView.center
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didSwipe(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: view)

        if sender.state == .began {
            
            print("Gesture began")
            
        } else if sender.state == .changed {
            
            messageView.transform = CGAffineTransform(translationX: translation.x, y: 0)

            // change the left image visibility
            switch translation.x {
            case -CGFloat.greatestFiniteMagnitude ... 25:
                self.leftImageView.alpha = 0
            case 25...50:
                self.leftImageView.alpha = (translation.x - 25) / 25
            default:
                self.leftImageView.alpha = 1
            }

            // change the right image visibility
            switch translation.x {
            case -25 ... CGFloat.greatestFiniteMagnitude:
                self.rightImageView.alpha = 0
            case -50 ... -25:
                self.rightImageView.alpha = (-translation.x - 25) / 25
            default:
                self.rightImageView.alpha = 1
            }

            if translation.x > 0 && translation.x <= 60 {
                
                // Standard State but headed right
                
                swipeView.backgroundColor = grayColor
                leftImageView.image = UIImage(named: "archive_icon")
                leftImageView.transform = CGAffineTransform(translationX: 0, y: 0)
                
                
            } else if translation.x >= -60 && translation.x <= 0 {
                
                // Standard State but headed left
                
                swipeView.backgroundColor = grayColor
                rightImageView.image = UIImage(named: "later_icon")
                rightImageView.transform = CGAffineTransform(translationX: 0, y: 0)
                
            } else if translation.x > 260 {
                
                // Extreme Right
                
                swipeView.backgroundColor = redColor
                leftImageView.image = UIImage(named: "delete_icon")
                leftImageView.transform = CGAffineTransform(translationX: translation.x - 60, y: 0)
                
            } else if translation.x > 60 {
                
                
                // Swipe Right
                
                swipeView.backgroundColor = greenColor
                leftImageView.image = UIImage(named: "archive_icon")
                UIView.animate(withDuration: 0.8) { () -> Void in
                    self.leftImageView.alpha = 1
                }
                leftImageView.transform = CGAffineTransform(translationX: translation.x - 60, y: 0)
                
                
            } else if translation.x < -260 {
                
                // Extreme Left
                
                swipeView.backgroundColor = brownColor
                rightImageView.image = UIImage(named: "list_icon")
                rightImageView.transform = CGAffineTransform(translationX: translation.x + 60, y: 0)

                
            } else if translation.x < -60 {
                
                // Swipe Left
                
                swipeView.backgroundColor = yellowColor
                rightImageView.image = UIImage(named: "later_icon")
                rightImageView.transform = CGAffineTransform(translationX: translation.x + 60, y: 0)
                
            } else {
                
                swipeView.backgroundColor = grayColor
                
            }

            
            print("Gesture is changing")
        } else if sender.state == .ended {

            var actionPerformed = false
            switch translation.x {
            case -60...60:
                UIView.animate(withDuration: 0.8) { () -> Void in
                    self.messageView.transform = CGAffineTransform.identity
                }
            case 260 ... CGFloat.greatestFiniteMagnitude: // Extreme Right
                // doDelete()
                actionPerformed = true
                fallthrough
            case 60 ... 260: // Normal Right
                if !actionPerformed {
                    // doArchive()
                    actionPerformed = true
                }
                // Animate off-screen right
                UIView.animate(withDuration: 0.8) { () -> Void in
                    self.messageView.transform = CGAffineTransform(translationX: 600, y: 0)
                }
            case -CGFloat.greatestFiniteMagnitude ... -260: // Extreme Left
                doList()
            case -260 ... -60: // Normal Left
                if !actionPerformed {
                    doReschedule()
                }
                // Animate off-screen left
                UIView.animate(withDuration: 0.8) { () -> Void in
                    self.messageView.transform = CGAffineTransform(translationX: -600, y: 0)
                }
            default:
                print("WTF!  We shouldn't be here!  Call the Police!")
            }
            
            if actionPerformed {
                swipeViewHidden()
            }
            
            print("Gesture ended")
        }
        
    }

    
    func swipeViewHidden(){
        
        UIView.animate(withDuration: 0.8) { () -> Void in
            self.leftImageView.alpha = 0
            self.rightImageView.alpha = 0
        }
        
        UIView.animate(withDuration: 0.8) { () -> Void in
            self.feedView.center.y -= 86
            self.swipeView.alpha = 0
        }
        
    }
    
    func doList(){
        
        UIView.animate(withDuration: 0.3) { () -> Void in
            self.listSuperView.alpha = 1
            self.superView.alpha = 0
        }
        
    }
    
    func doReschedule(){
        
        UIView.animate(withDuration: 0.8) { () -> Void in
            self.rescheduleSuperView.alpha = 1
            self.superView.alpha = 0
        }
    }
    
    @IBAction func didSwipeLeftFromEdge(_ sender: UIScreenEdgePanGestureRecognizer) {
        
        let translation = sender.translation(in: view)
        
        if sender.state == .began {
            
            print("Gesture began")
            
        } else if sender.state == .changed {
            
            superView.transform = CGAffineTransform(translationX: translation.x, y: 0)

            print("Gesture is changing")
        } else if sender.state == .ended {
            
            if translation.x > 250 {
                
                UIView.animate(withDuration: 0.5) { () -> Void in
                    self.superView.transform = CGAffineTransform(translationX: 320, y: 0)
                }
                
            } else {
                
                UIView.animate(withDuration: 0.5) { () -> Void in
                    self.superView.transform = CGAffineTransform.identity
                }
                
            }
            
            
            print("Gesture ended")
        }

        
        
        
    }

    @IBAction func dismissListView(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) { () -> Void in
            self.listSuperView.alpha = 0
            self.superView.alpha = 1
        }
        
        self.swipeViewHidden()
        
    }
    
    @IBAction func dismissRescheduleView(_ sender: AnyObject) {
  
        UIView.animate(withDuration: 0.3) { () -> Void in
            self.rescheduleSuperView.alpha = 0
            self.superView.alpha = 1
        }
        
        self.swipeViewHidden()
    
    }
    
    override var canBecomeFirstResponder : Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            print("Shake!")
            
            UIView.animate(withDuration: 0.8) { () -> Void in
                self.feedView.center.y += 86
                self.swipeView.alpha = 1
                self.messageView.transform = CGAffineTransform(translationX: 0, y: 0)
            }
            
        }
    }

    @IBAction func didTapASegment(_ sender: UISegmentedControl) {
        
        switch viewSegmentedControl.selectedSegmentIndex
        {
        case 0:
            
            UIView.animate(withDuration: 0.3) { () -> Void in
                self.allViewScrollView.transform = CGAffineTransform(translationX: 320, y: 0)
            }

            print("Later")
        case 1:
            
            UIView.animate(withDuration: 0.3) { () -> Void in
                self.allViewScrollView.transform = CGAffineTransform(translationX: 0, y: 0)
            }
            print("Inbox")
        case 2:
            
            UIView.animate(withDuration: 0.3) { () -> Void in
                self.allViewScrollView.transform = CGAffineTransform(translationX: -320, y: 0)
            }
            print("Archive")
        default:
            break; 
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
