//
//  ViewController.swift
//  TicTacToe
//
//  Created by Travis Black on 2018-11-17.
//  Copyright © 2018 Tralack. All rights reserved.
//

import UIKit
import GameKit


class ViewController: UIViewController {
    @IBOutlet weak var tictactoeview: TicTacToeView!

    @IBOutlet var allBlocks: [UIButton]!

    var game = TicTacToe()
    var sound = SoundPlayer()
    
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
                sound.playSound()
                ViewController.winner = game.winner!
                performSegue(withIdentifier: "gameEndedSegue", sender: self)
            }
            
            if (game.goodResult == true){
            tictactoeview.XorO = (gameSymbol , allBlocks[blockNumber].center)
            }
            
            game.goodResult = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //winner = nil

        }

}

