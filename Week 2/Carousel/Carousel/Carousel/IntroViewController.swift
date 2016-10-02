//
//  IntroViewController.swift
//  Carousel
//
//  Created by Christopher Ryan on 9/27/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    @IBOutlet weak var tileView: UIView!
    @IBOutlet weak var tile1: UIImageView!
    @IBOutlet weak var tile2: UIImageView!
    @IBOutlet weak var tile3: UIImageView!
    @IBOutlet weak var tile4: UIImageView!
    @IBOutlet weak var tile5: UIImageView!
    @IBOutlet weak var tile6: UIImageView!
    @IBOutlet weak var swipeText: UILabel!
    
    var tiles = [UIImageView]()
    
    //Arrays of initial transform values for tiles
    var yOffests: [Float] = [-285, -240, -435, -408, -510, -500]
    var xOffsets: [Float] = [-70, 40, 10, 90, -120, -100]
    var scales: [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations: [Float] = [-10, -10, 10, 10, 10, -10]
    
    func proportionalValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        let ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }
    
    let screenHeight:CGFloat = 568
    func convert(offset: CGFloat, start: CGFloat, end: CGFloat) -> CGFloat {
        let proportion = offset / screenHeight
        return start + proportion * (end - start)
    }
    
    func transformView(view: UIView!, atIndex index : Int, offset : Float) {
        
    }
    
    func updateViewTransformsWithOffset(offset : Float) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tiles = [tile1, tile2, tile3, tile4, tile5, tile6]
        
        introScrollView.contentSize = introImageView.frame.size
        introScrollView.delegate = self
        
        positionTiles(offset: 0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func positionTiles(offset: CGFloat) {

        let zero = CGFloat(0)
        for index in 0..<6 {
            let tile = tiles[index]
            var yOffset = CGFloat(yOffests[index])
            var xOffset = CGFloat(xOffsets[index])
            var scale = CGFloat(scales[index])
            var rotation = CGFloat(rotations[index])
            
            yOffset = convert(offset: offset, start: yOffset, end: zero)
            xOffset = convert(offset: offset, start: xOffset, end: zero)
            scale = convert(offset: offset, start: scale, end: CGFloat(1))
            rotation = convert(offset: offset, start: rotation, end: zero)
            
            tile.transform = CGAffineTransform(translationX: xOffset, y: yOffset)
            tile.transform = tile.transform.scaledBy(x: scale, y: scale)
            tile.transform = tile.transform.rotated(by: rotation * CGFloat(M_PI) / 180)
        }     
        swipeText.alpha = convert(offset: offset, start: 1.0, end: -2.0)

    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // This method is called as the user scrolls
        let offset = CGFloat(scrollView.contentOffset.y)
        
        positionTiles(offset: offset)
        
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
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
