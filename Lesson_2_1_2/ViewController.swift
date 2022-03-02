//
//  ViewController.swift
//  Lesson_2_1_2
//
//  Created by Pavel Metelin on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var indicatorViews: [UIView]!
    @IBOutlet var switchButton: UIButton!
    
    var clickCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for indicatorView in indicatorViews {
            indicatorView.layer.cornerRadius = indicatorView.frame.height / 2
            indicatorView.alpha = 0.3
        }
        
        switchButton.layer.cornerRadius = 10
    }
    
    @IBAction func PressSwitchButton() {
        switchButton.setTitle("NEXT", for: .normal)

        var oldValue: Int
        
        if clickCount <= 2 {
            print(clickCount)
            clickCount += 1
        } else {
            clickCount = 0
            print(clickCount)
            clickCount += 1
            //print("new round")
        }
        
//        switch clickCount {
//        case 0:
//            indicatorViews[clickCount].alpha = 1
//            indicatorViews[clickCount+2].alpha = 0.3
//            clickCount +=  1
//        case 1:
//            indicatorViews[clickCount].alpha = 1
//            indicatorViews[clickCount-1].alpha = 0.3
//            clickCount +=  1
//        case 2:
//            indicatorViews[clickCount].alpha = 1
//            indicatorViews[clickCount-1].alpha = 0.3
//            clickCount = 0
//        default:
//            for indicatorView in indicatorViews {
//                indicatorView.alpha = 0.3
//            }
//        }
    }
    
}

