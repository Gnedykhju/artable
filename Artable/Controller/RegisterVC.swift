//
//  RegisterVC.swift
//  Artable
//
//  Created by User on 01/09/2019.
//  Copyright © 2019 Yulia Gnedykh. All rights reserved.
//

import UIKit
import Firebase

class RegisterVC: UIViewController {
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var confirmPassTxt: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var passCheckImg: UIImageView!
    @IBOutlet weak var confirmPassCheckImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        passwordTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        confirmPassTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)

      
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        guard let passTxt = passwordTxt.text else { return}
        
        if textField == confirmPassTxt {
            passCheckImg.isHidden = false
            confirmPassCheckImg.isHidden = false
        } else {
            if passTxt.isEmpty {
                passCheckImg.isHidden = true
                confirmPassCheckImg.isHidden = true
                confirmPassTxt.text = ""
            }
        }
        
       // Make it so that when passwords match, the checkmarks turn green
        if passwordTxt.text == confirmPassTxt.text {
            passCheckImg.image = UIImage(named: "green_check")
            confirmPassCheckImg.image = UIImage(named: "green_check")
        } else {
            passCheckImg.image = UIImage(named: "red_check")
            confirmPassCheckImg.image = UIImage(named: "red_check")
        }
    }
    

    @IBAction func registerClicked(_ sender: Any) {
        guard let email = emailTxt.text, !email.isEmpty,
            let username = usernameTxt.text, !username.isEmpty,
            let password = passwordTxt.text, !password.isEmpty else {return}
        
        activityIndicator.startAnimating()
      
        
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if let error = error {
                debugPrint(error)
                return
            }
            self.activityIndicator.stopAnimating()
            print("Successfully registered new user")
       
        }
        }
  
    

}
