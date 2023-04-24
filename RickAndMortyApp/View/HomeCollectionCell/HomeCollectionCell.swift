//
//  HomeCollectionCell.swift
//  RickAndMortyApp
//
//  Created by rasit on 7.04.2023.
//

import UIKit

class HomeCollectionCell: UICollectionViewCell {

    @IBOutlet weak var testView: UIView!
    @IBOutlet weak var locationTextLabel: UILabel!
    
//    override var isSelected: Bool {
//        didSet {
//            self.testView.backgroundColor = isSelected ? UIColor.green : UIColor.systemGray2
//        }
//    }
    override func awakeFromNib() {
        super.awakeFromNib()
        testView.layer.cornerRadius = 4
        testView.layer.borderWidth = 1
        testView.layer.borderColor = UIColor.black.cgColor
    }
}
