//
//  TeamCell.swift
//  ios101-capstone-afrigoal
//
//  Created by Qetsia Nkulu  on 11/8/23.
//

import UIKit

class TeamCell: UITableViewCell {
    
    @IBOutlet weak var teamFlagImageView: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var teamHomeStadiumLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
