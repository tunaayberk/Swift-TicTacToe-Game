//
//  Tuna_GameModel.swift
//  Tuna_Yellow_TicTacToe
//
//  Created by Tuna Ayberk Ozmen on 2019-06-12.
//  Copyright © 2019 Tuna Ayberk Ozmen. All rights reserved.
//

import Foundation

class Tuna_GameModel {
    //MARK: Properties
    var whoseTurnIsIt = "X";
    var numberOfMovesPlayed = 0;
    var checkFor = "O";
    var gameResult = "";
    
    var movesPlayed = Array(repeating: "", count: 9)
    
    let winningCombinations = [
    [1,2,3],
    [1,4,7],
    [1,5,9],
    [2,5,8],
    [3,5,7],
    [3,6,9],
    [4,5,6],
    [7,8,9]];
    
    //MARK: Methods
    func playMove(tag: Int){
        movesPlayed[tag-1] = whoseTurnIsIt;
        
        numberOfMovesPlayed += 1;
        
        if(whoseTurnIsIt == "X"){
            whoseTurnIsIt = "O";
            checkFor = "X";
        } else {
            whoseTurnIsIt = "X";
            checkFor = "O";
        }
    }
    
    func checkIfGameIsOver() -> Bool{
        if(numberOfMovesPlayed<5){
            return false
        }
        
        for i in 0..<8 {
            let winningCombo = winningCombinations[i];
        
            if(movesPlayed[winningCombo[0]-1] == checkFor &&
                movesPlayed[winningCombo[1]-1] == checkFor &&
                movesPlayed[winningCombo[2]-1] == checkFor){
                //game is over
                //checkFor has won
                gameResult = checkFor + " Won!";
                saveGame();
                return true;
            }
        }
        
        if(numberOfMovesPlayed == 9){
            gameResult = "Draw";
            saveGame();
            return true
        }
        
        
        
        
        return false;
    }
    
    func saveGame() {
        //save the game information
        var numberOfGamesPlayed = UserDefaults.standard.integer(forKey: "numberOfGamePlayed");
        
        numberOfGamesPlayed += 1;
        
        UserDefaults.standard.set(numberOfGamesPlayed, forKey: "numberOfGamesPlayed");
        
        UserDefaults.standard.set(gameResult, forKey: "Result_" + String(numberOfGamesPlayed));
        
        let currentTime = Date();
        
        UserDefaults.standard.set(currentTime, forKey: "TimeStamp_" + String(numberOfGamesPlayed));
        
    }
}
