//
//  DetailViewController.swift
//  RickAndMortyApp
//
//  Created by rasit on 18.04.2023.
//

import UIKit
import Kingfisher
class DetailViewController: UIViewController {
    
    @IBOutlet weak var charachterImageView: UIImageView!
    @IBOutlet weak var statusTitleLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var specyTitleLabel: UILabel!
    @IBOutlet weak var specyLabel: UILabel!
    @IBOutlet weak var genderTitleLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var originTitleLabel: UILabel!
    @IBOutlet weak var originLabel: UILabel!
    @IBOutlet weak var locationTitleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var episodesTitleLabel: UILabel!
    @IBOutlet weak var episodesLabel: UILabel!
    @IBOutlet weak var dayTitleLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    
    var charachter: CharacterModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            setUI()
    }
        
    private func setUI() {
        charachterImageView.kf.setImage(with: URL(string: charachter?.image ?? ""))
        statusLabel.text = charachter?.status
        specyLabel.text = charachter?.species
        genderLabel.text = charachter?.gender
        originLabel.text = charachter?.origin?.name
        locationLabel.text = charachter?.location?.name
        dayLabel.text = charachter?.created
        self.title = charachter?.name
    }
}
