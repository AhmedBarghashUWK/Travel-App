//
//  SearchFlightViewController.swift
//  Travel App
//
//  Created by Ahmed barghash on 2/12/20.
//  Copyright © 2020 Ahmed barghash. All rights reserved.
//

import UIKit

class SearchFlightViewController: UIViewController {

    @IBOutlet weak var searchFlightTableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        searchFlightTableView.dataSource = self
        searchFlightTableView.delegate = self
        
        searchFlightTableView.tableFooterView = UIView()
        searchFlightTableView.tableHeaderView = UIView()
        
    }

}

extension SearchFlightViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = searchFlightTableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath) as! SearchFlightTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
