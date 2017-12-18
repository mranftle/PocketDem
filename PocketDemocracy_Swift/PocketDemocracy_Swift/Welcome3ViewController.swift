//
//  Welcome1ViewController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 12/16/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class Welcome3ViewController: UIViewController {
    
    @IBOutlet weak var circle1: UIView!
    @IBOutlet weak var circle2: UIView!
    @IBOutlet weak var circle3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.

        circle1.layer.cornerRadius = circle1.frame.size.width/2
        circle1.clipsToBounds = true
        circle1.layer.borderColor = UIColor.black.cgColor
        circle1.layer.borderWidth = 1.0
        
        circle2.layer.cornerRadius = circle2.frame.size.width/2
        circle2.clipsToBounds = true
        circle2.layer.borderColor = UIColor.white.cgColor
        circle2.layer.borderWidth = 1.0
        
        circle3.layer.cornerRadius = circle3.frame.size.width/2
        circle3.clipsToBounds = true
        circle3.layer.borderColor = UIColor.black.cgColor
        circle3.layer.borderWidth = 1.0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

