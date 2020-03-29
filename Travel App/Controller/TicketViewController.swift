//
//  TicketViewController.swift
//  Travel App
//
//  Created by Ahmed barghash on 2/11/20.
//  Copyright © 2020 Ahmed barghash. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {
    
    @IBOutlet weak var roundBTN: UIButton!
    @IBOutlet weak var oneWayBTN: UIButton!
    @IBOutlet weak var multiBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onClickRound(_ sender: Any) {
        changeDesign(roundColor: #colorLiteral(red: 0, green: 0.7627847726, blue: 0.8018066287, alpha: 1), roundTxtColor: .white)
    }
    
    @IBAction func onClickOneWay(_ sender: Any) {
        changeDesign(oneWayColor: #colorLiteral(red: 0, green: 0.7627847726, blue: 0.8018066287, alpha: 1),oneWayTxtColor: .white)
    }
    
    @IBAction func onClickMulti(_ sender: Any) {
        changeDesign(multiColor: #colorLiteral(red: 0, green: 0.7627847726, blue: 0.8018066287, alpha: 1),multiTxtColor: .white)
    }
    
    func changeDesign(roundColor: UIColor = .white, oneWayColor: UIColor = .white, multiColor: UIColor = .white, roundTxtColor: UIColor = #colorLiteral(red: 0, green: 0.7627847726, blue: 0.8018066287, alpha: 1), oneWayTxtColor: UIColor = #colorLiteral(red: 0, green: 0.7627847726, blue: 0.8018066287, alpha: 1), multiTxtColor: UIColor = #colorLiteral(red: 0, green: 0.7627847726, blue: 0.8018066287, alpha: 1)){
        roundBTN.backgroundColor = roundColor
        oneWayBTN.backgroundColor = oneWayColor
        multiBTN.backgroundColor = multiColor
        
        roundBTN.setTitleColor(roundTxtColor, for: .normal)
        oneWayBTN.setTitleColor(oneWayTxtColor, for: .normal)
        multiBTN.setTitleColor(multiTxtColor, for: .normal)
    }
    
    @IBAction func onClickSearchFlight(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SearchFlightViewController")
        navigationController?.pushViewController(destination, animated: true)
    }
    
}
