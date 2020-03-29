//
//  SignUpViewController.swift
//  Travel App
//
//  Created by Ahmed barghash on 2/8/20.
//  Copyright © 2020 Ahmed barghash. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameTextField.addRightView(image: #imageLiteral(resourceName: "user"))
        emailTextField.addRightView(image: #imageLiteral(resourceName: "mail"))
        passwordTextField.addRightView(image: #imageLiteral(resourceName: "eye"),isSecure: true)

    }
    
    @IBAction func onClickSignUp(_ sender: Any) {
        UserDefaults.standard.set("LogedIn", forKey: "accessToken")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "TabBarViewController")
        navigationController?.pushViewController(destination, animated: true)
    }
    
    @IBAction func onClickSignIn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SignInViewController")
        navigationController?.pushViewController(destination, animated: true)
    }
    
}
