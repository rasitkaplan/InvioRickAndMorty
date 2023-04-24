//
//  HomeTableCell.swift
//  RickAndMortyApp
//
//  Created by rasit on 7.04.2023.
//

import UIKit

class HomeTableCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageImageView: UIImageView!
    @IBOutlet weak var genderImageView: UIImageView!
    
    
    var location : [LocationResult] = []
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
