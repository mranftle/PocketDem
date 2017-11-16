//
//  ProfileController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/14/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logoutPressed(_ sender: UIButton) {
        GlobalVars.currentUser = nil
        let loginController = self.storyboard!.instantiateViewController(withIdentifier: "LoginControllerID")
        self.present(loginController, animated: true, completion: nil)
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
