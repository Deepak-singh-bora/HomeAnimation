//
//  ViewController.swift
//  HomeAnimation
//
//  Created by Appinventiv on 09/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dayTop: NSLayoutConstraint!
    @IBOutlet weak var nightLead: NSLayoutConstraint!
    @IBOutlet weak var nightTop: NSLayoutConstraint!
    @IBOutlet weak var dayTrailing: NSLayoutConstraint!
    @IBOutlet weak var homeBottom: NSLayoutConstraint!
    @IBOutlet weak var homeX: NSLayoutConstraint!
    @IBOutlet weak var sunX: NSLayoutConstraint!
    @IBOutlet weak var sunY: NSLayoutConstraint!
    @IBOutlet weak var sunWidth: NSLayoutConstraint!
    @IBOutlet weak var sunHeight: NSLayoutConstraint!
    @IBOutlet weak var homeWidth: NSLayoutConstraint!
    @IBOutlet weak var homeHeight: NSLayoutConstraint!
    @IBOutlet weak var homeOutlet: UIView!
    @IBOutlet weak var sunOutlet: UIView!

    @IBOutlet weak var door: UIView!
    
    @IBOutlet weak var sunMoonImage: UIImageView!
    @IBOutlet weak var rightWindow: UIView!
    @IBOutlet weak var leftwindow: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sunOutlet.layer.cornerRadius = 50
        
        sunOutlet.clipsToBounds = true
        self.view.layoutIfNeeded()
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        sunOutlet.layer.cornerRadius = 25
        sunOutlet.clipsToBounds = true
    
        
    }

}




extension ViewController{
    
    @IBAction func nightBtn(_ sender: UIButton) {
        
        UIView.animate(withDuration: 5, delay: 1, options: .beginFromCurrentState, animations: {
            self.sunWidth.constant = 80
            self.sunHeight.constant = 80
            self.sunOutlet.layer.cornerRadius = 40
            self.sunOutlet.clipsToBounds = true
            self.sunMoonImage.image = #imageLiteral(resourceName: "moon")
            //self.blueView.transform = CGAffineTransform( rotationAngle: CGFloat(1) );
            self.sunX.constant = -123
            self.sunY.constant = -340
            //self.sunOutlet.backgroundColor = UIColor.yellow
            self.sunOutlet.backgroundColor = UIColor.white
            self.view.backgroundColor = UIColor.black
            self.door.backgroundColor = UIColor.black
            self.leftwindow.backgroundColor = UIColor.yellow
            self.rightWindow.backgroundColor = UIColor.yellow
            self.view.layoutIfNeeded()
            self.sunOutlet.updateConstraints()
        }, completion: nil)
        
    }
    
    @IBAction func dayBtn(_ sender: UIButton) {
        
        
//        self.sunY.constant = 0
//        self.sunX.constant = 0
        UIView.animateKeyframes(withDuration: 5, delay: 1, options: .beginFromCurrentState , animations: {
            self.sunHeight.constant = 100
            self.sunWidth.constant = 100
            self.sunOutlet.layer.cornerRadius = 50
            self.sunOutlet.clipsToBounds = true
            self.sunMoonImage.image = #imageLiteral(resourceName: "the-sun")
            //self.sunOutlet.backgroundColor = UIColor.yellow
            self.sunY.constant = 0
            self.sunX.constant = 0
            self.door.backgroundColor = UIColor.white
            self.leftwindow.backgroundColor = UIColor.white
            self.rightWindow.backgroundColor = UIColor.white
            self.view.backgroundColor = UIColor.white
            self.view.layoutIfNeeded()
        }, completion: nil)

    }
    
    
}

