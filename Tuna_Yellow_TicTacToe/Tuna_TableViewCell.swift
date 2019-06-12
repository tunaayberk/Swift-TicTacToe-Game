//
//  Tuna_TableViewCell.swift
//  Tuna_Yellow_TicTacToe
//
//  Created by Tuna Ayberk Ozmen on 2019-05-29.
//  Copyright © 2019 Tuna Ayberk Ozmen. All rights reserved.
//

import UIKit

class Tuna_TableViewCell: UITableViewCell {

    @IBOutlet weak var win_loss_image: UIImageView!
    @IBOutlet weak var who_won: UILabel!
    @IBOutlet weak var date_played: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
