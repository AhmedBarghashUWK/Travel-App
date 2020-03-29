//
//  ToursViewController.swift
//  Travel App
//
//  Created by Ahmed barghash on 2/14/20.
//  Copyright © 2020 Ahmed barghash. All rights reserved.
//

import UIKit

class ToursViewController: UIViewController {

    @IBOutlet weak var tourTableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        tourTableView.dataSource = self
        tourTableView.delegate = self
        
    }
}

extension ToursViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tourTableView.dequeueReusableCell(withIdentifier: "TourCell", for: indexPath) as! ToursTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
}
