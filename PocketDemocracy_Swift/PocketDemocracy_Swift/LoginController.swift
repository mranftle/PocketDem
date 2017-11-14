//
//  LoginController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/13/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var failedLoginMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        usernameText.text = ""
        passwordText.text = ""
        failedLoginMessage.alpha = 0 // default = 0.85
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func loginResult(result: Bool) -> Bool {
        passwordText.text = ""
        if result {
            usernameText.text = ""
            failedLoginMessage.alpha = 0
        } else {
            failedLoginMessage.alpha = 0.85
        }
        print("failedLoginMessage.alpha = \(failedLoginMessage.alpha)")
        return result
    }
    
    private func isLoginSuccessful() -> Bool {
        let username = usernameText.text ?? ""
        let password = passwordText.text ?? ""
        
        if (username == "" || password == "") {
            return loginResult(result: false)
        }
        
        for user in GlobalVars.users {
            if user.username == username && user.password == password {
                return loginResult(result: true)
            }
        }
        return loginResult(result: false)
        
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        let identifier = "loginSuccess"
        if shouldPerformSegue(withIdentifier: identifier, sender: nil) {
            self.performSegue(withIdentifier: identifier, sender: nil)
        }
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        print("Register pressed")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "loginSuccess" {
            if (!self.isLoginSuccessful()) {
                return false
            }
        }
        return true
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "loginSuccess" {
            let vc = segue.destination as! TabController
            vc.username = usernameText.text!
        }
    }
    
 

}
