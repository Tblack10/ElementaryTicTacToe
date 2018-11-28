//
//  ViewController.swift
//  TicTacToe
//
//  Created by Travis Black on 2018-11-17.
//  Copyright © 2018 Tralack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tictactoeview: TicTacToeView!

    @IBOutlet var allBlocks: [UIButton]!
    
    var game = TicTacToe()
    
    @IBAction func newgame(_ sender: UIButton) {
       tictactoeview.reset()
       game.newGame()
    }
    
    static var winner: String? = nil

    @IBAction func makeAnXorAnO(_ sender: UIButton) {
        if let blockNumber = allBlocks.index(of: sender) {
            var gameSymbol: Character
            if (game.currentTurn == "one"){
                gameSymbol = game.playerOneInsert(at: blockNumber).symbol
            } else {
                gameSymbol = game.playerTwoInsert(at: blockNumber).symbol
            }
            
            if(game.checkForTTT()){
                ViewController.winner = game.winner!
                 performSegue(withIdentifier: "gameEndedSegue", sender: self)
            }
            
            tictactoeview.XorO = (gameSymbol , allBlocks[blockNumber].center)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //winner = nil
    }

}

