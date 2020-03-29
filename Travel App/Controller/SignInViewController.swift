//
//  SignInViewController.swift
//  Travel App
//
//  Created by Ahmed barghash on 2/9/20.
//  Copyright © 2020 Ahmed barghash. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var nameOrEmailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameOrEmailTextField.addRightView(image: #imageLiteral(resourceName: "mail"))
        passwordTextField.addRightView(image: #imageLiteral(resourceName: "eye"),isSecure: true)
        
    }
    
    
    @IBAction func onClickSignIn(_ sender: Any) {
        UserDefaults.standard.set("LogedIn", forKey: "accessToken")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "TabBarViewController")
        navigationController?.pushViewController(destination, animated: true)
    }
    
    
    @IBAction func onClickCreateNow(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SignUpViewController")
        navigationController?.pushViewController(destination, animated: true)
    }
    

}
