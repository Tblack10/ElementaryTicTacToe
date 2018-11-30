//
//  SecondViewController.swift
//  TicTacToe
//
//  Created by Travis Black on 2018-11-27.
//  Copyright © 2018 Tralack. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var winnerName: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        winnerName.text = "\(winner!) Wins!"
    }
    var winner: String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        winner = ViewController.winner
    }
    
    
    @IBAction func newGame(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
