//
//  HomeViewController.swift
//  Travel App
//
//  Created by Ahmed barghash on 2/11/20.
//  Copyright © 2020 Ahmed barghash. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onClickPlane(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "TicketViewController")
        navigationController?.pushViewController(destination, animated: true)
    }
    
    @IBAction func onClickTrain(_ sender: Any) {
    }
    
    @IBAction func onClickCar(_ sender: Any) {
    }
}
