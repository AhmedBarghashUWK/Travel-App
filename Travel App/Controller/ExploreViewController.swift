//
//  ExploreViewController.swift
//  Travel App
//
//  Created by Ahmed barghash on 2/14/20.
//  Copyright © 2020 Ahmed barghash. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet weak var exploreTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exploreTableView.delegate = self
        exploreTableView.dataSource = self
        
    }
}

extension ExploreViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = exploreTableView.dequeueReusableCell(withIdentifier: "ExploreCell", for: indexPath) as! ExploreTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
}
