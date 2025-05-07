//
//  MatchDescriptionCell.swift
//  CricketMatchPredictionGame
//
//  Created by Aman Kumar Singh on 30/03/25.
//

import UIKit

class MatchDescriptionCell: UICollectionViewCell {
    static let identifier = String(describing: MatchDescriptionCell.self)
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.shadowRadius = 2
        contentView.layer.shadowOpacity = 0.4
        contentView.layer.shadowOffset = CGSize(width: 1, height: 1)
        contentView.layer.shadowColor = UIColor.black.cgColor
        //contentView.layer.masksToBounds = false
        containerView.layer.cornerRadius = 10
    }
}
