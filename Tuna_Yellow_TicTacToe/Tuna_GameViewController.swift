//
//  Tuna_GameViewController.swift
//  Tuna_Yellow_TicTacToe
//
//  Created by Tuna Ayberk Ozmen on 2019-06-12.
//  Copyright © 2019 Tuna Ayberk Ozmen. All rights reserved.
//

import UIKit

class Tuna_GameViewController: UIViewController {

    //MARK: Properties
    var gameModel = Tuna_GameModel();
    var acceptNewTouches = true;
    
    //MARK: Outlets
    @IBOutlet weak var gameStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: Touch events on buttons
    
    @IBAction func squareTouched(_ sender: UIButton) {
        print("new button touched")
        print(sender.tag);
        
        if(sender.currentTitle == nil && acceptNewTouches){
            sender.setTitle(gameModel.whoseTurnIsIt, for: .normal)
            gameModel.playMove(tag: sender.tag)
            
            if(gameModel.checkIfGameIsOver()){
                gameStatusLabel.text = gameModel.gameResult;
                acceptNewTouches = false
            } else {
                gameStatusLabel.text = gameModel.whoseTurnIsIt + "'s Turn";
                acceptNewTouches = true;
            }
            
        } else {
            
        }
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
