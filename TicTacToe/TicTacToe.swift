//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by Travis Black on 2018-11-24.
//  Copyright © 2018 Tralack. All rights reserved.
//

import Foundation


class TicTacToe {
    
    var posNW = 0 {didSet { (currentTurn == "one")  ? (currentTurn = "two") : (currentTurn = "one")}}
    var posN = 0 { didSet { (currentTurn == "one")  ? (currentTurn = "two") : (currentTurn = "one")}}
    var posNE = 0 { didSet { (currentTurn == "one")  ? (currentTurn = "two") : (currentTurn = "one")}}
    var posW = 0 {didSet { (currentTurn == "one")  ? (currentTurn = "two") : (currentTurn = "one")}}
    var posC = 0 {didSet { (currentTurn == "one")  ? (currentTurn = "two") : (currentTurn = "one")}}
    var posE = 0 {didSet { (currentTurn == "one")  ? (currentTurn = "two") : (currentTurn = "one")}}
    var posSW = 0 {didSet { (currentTurn == "one")  ? (currentTurn = "two") : (currentTurn = "one")}}
    var posS = 0 {didSet { (currentTurn == "one")  ? (currentTurn = "two") : (currentTurn = "one")}}
    var posSE = 0 {didSet { (currentTurn == "one")  ? (currentTurn = "two") : (currentTurn = "one")}}
    
    var winner: String? = nil
    var currentTurn = "one"
    var goodResult = true
    func playerOneInsert(at block: Int) -> (symbol: Character, success: Bool) {
        
        
        
        switch block {
        case 0:
            if (posNW == 0){posNW = 1} else {goodResult = false}
        case 1:
            if (posN == 0){posN = 1} else {goodResult = false}
        case 2:
            if (posNE == 0){posNE = 1} else {goodResult = false}
        case 3:
            if (posW == 0){posW = 1} else {goodResult = false}
        case 4:
            if (posC == 0){posC = 1} else {goodResult = false}
        case 5:
            if (posE == 0){posE = 1} else {goodResult = false}
        case 6:
            if (posSW == 0){posSW = 1} else {goodResult = false}
        case 7:
            if (posS == 0){posS = 1} else {goodResult = false}
        case 8:
            if (posSE == 0){posSE = 1} else {goodResult = false}
        default:
            print("That's not a block!")
        }
        
        if (checkForTTT()) {
            print("X's WIN!!!!!!")
            winner = "Player One"
        }
        
        return (symbol: "x", success: goodResult)
    }
    
    func playerTwoInsert(at block: Int) -> (symbol: Character, success: Bool) {
        
        
        switch block {
        case 0:
            if (posNW == 0){posNW = 2} else {goodResult = false}
        case 1:
            if (posN == 0){posN = 2} else {goodResult = false}
        case 2:
            if (posNE == 0){posNE = 2} else {goodResult = false}
        case 3:
            if (posW == 0){posW = 2} else {goodResult = false}
        case 4:
            if (posC == 0){posC = 2} else {goodResult = false}
        case 5:
            if (posE == 0){posE = 2} else {goodResult = false}
        case 6:
            if (posSW == 0){posSW = 2} else {goodResult = false}
        case 7:
            if (posS == 0){posS = 2} else {goodResult = false}
        case 8:
            if (posSE == 0){posSE = 2} else {goodResult = false}
        default:
            print("Already Taken")
        }
        
        if (checkForTTT()) {
            print("O's WIN!!!!!!")
            winner = "Player Two"
        }
        
        return (symbol: "o", success: goodResult)
    }
    
    // Checks for tic tac toe
    func checkForTTT () -> Bool {
        if (posNW == posN && posNW == posNE && posNW != 0) {
            return true
        } else if (posW == posC && posW == posE && posW != 0) {
            return true
        } else if (posSW == posS && posSW == posSE && posSW != 0) {
            return true
        } else if (posNW == posW && posNW == posSW && posNW != 0) {
            return true
        } else if (posN == posC && posN == posS && posN != 0) {
            return true
        } else if (posNE == posE && posNE == posSE && posNE != 0){
            return true
        } else if (posNW == posC && posNW == posSE && posNW != 0){
            return true
        } else if (posNE == posC && posNE == posSW && posNE != 0){
            return true
        }
        return false
    }
    
    func newGame () {
        posNW = 0
        posN = 0
        posNE = 0
        posW = 0
        posC = 0
        posE = 0
        posSW = 0
        posS = 0
        posSE = 0
    }
    
}


