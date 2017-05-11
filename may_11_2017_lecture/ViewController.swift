//
//  ViewController.swift
//  may_11_2017_lecture
//
//  Created by Andy Feng on 5/11/17.
//  Copyright © 2017 Andy Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// This need work...
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var menuViewLeadingConstraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /// Create the event handler constant
        let myLabelTap = UITapGestureRecognizer(target: self, action: #selector(handleMyLabelTapped))
        
        /// Enable actions on the label
        myLabel.isUserInteractionEnabled = true
        
        /// Assign the event handler to our label
        myLabel.addGestureRecognizer(myLabelTap)
        
        
        
        menuViewLeadingConstraint.constant = -300
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func handleMyLabelTapped(){
        print("label was tapped!")
        
        if menuViewLeadingConstraint.constant != -50 {
            menuViewLeadingConstraint.constant = -50
        } else {
            menuViewLeadingConstraint.constant = -300
        }
        
        
        /// Code to start animation =======================================
        self.view.setNeedsLayout()
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.45, initialSpringVelocity: 0.7, options: [UIViewAnimationOptions.allowUserInteraction], animations: {
        
            // Code inside animation function
            self.view.layoutIfNeeded()
            
        })
        /// ===============================================================
    }
    
    

}

