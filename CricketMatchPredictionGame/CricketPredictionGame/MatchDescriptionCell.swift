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
        containerView.layer.cornerRadius = 10
        containerView.layer.borderWidth = 0.5
        containerView.layer.borderColor = UIColor.gray.cgColor
    }
}
