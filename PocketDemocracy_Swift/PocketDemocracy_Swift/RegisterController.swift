//
//  RegisterController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/14/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {

    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var confirmPassText: UITextField!
    @IBOutlet weak var failedRegisterMessage: UILabel!
    @IBOutlet weak var orgSwitch: UISwitch!
    @IBOutlet weak var orgText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        usernameText.text = ""
        passwordText.text = ""
        confirmPassText.text = ""
        if orgSwitch.isOn {
            orgText.alpha = 1
            orgText.text = ""
        } else {
            orgText.alpha = 0
        }
        failedRegisterMessage.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func isRegisterSuccessful() -> Bool {
        let username = usernameText.text ?? ""
        let password = passwordText.text ?? ""
        let confirmPass = confirmPassText.text ?? ""
        let organization = orgText.text ?? ""
        
        if username == "" || password == "" || confirmPass == "" {
            return false
        }
        
        if password != confirmPass {
            return false
        }
        
        for user in GlobalVars.users {
            if user.username == username {
                return false
            }
        }
        
        if orgSwitch.isOn && organization == "" {
            let alert = UIAlertController(title: "Error", message: "Need to enter a valid organization name", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return false
        }
        
        return true
    }
    
    private func updateRegisterLabels(result: Bool) {
        let username = usernameText.text ?? ""
        let password = passwordText.text ?? ""
        let confirmPass = confirmPassText.text ?? ""
        
        passwordText.text = ""
        confirmPassText.text = ""
        
        if result {
            usernameText.text = ""
            failedRegisterMessage.alpha = 0
        } else {
            failedRegisterMessage.alpha = 0.85
            if password != confirmPass {
                failedRegisterMessage.text = "Password does not match"
            } else {
                var userFound = false
                for user in GlobalVars.users {
                    if user.username == username {
                        failedRegisterMessage.text = "Username already in use"
                        userFound = true
                        break
                    }
                }
                if !userFound {
                    failedRegisterMessage.text = "Invalid input"
                }
            }
        }
    }
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func orgSwitchChanged(_ sender: UISwitch) {
        orgText.alpha = (orgSwitch.isOn) ? 1 : 0
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showInterests" {
            if !isRegisterSuccessful() {
                updateRegisterLabels(result: false)
                return false
            }
        }
        return true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showInterests" {
            let vc = segue.destination as! InterestsController
            vc.userPass = (usernameText.text!, passwordText.text!, orgText.text!)
            updateRegisterLabels(result: true)
        }
    }
 

}
