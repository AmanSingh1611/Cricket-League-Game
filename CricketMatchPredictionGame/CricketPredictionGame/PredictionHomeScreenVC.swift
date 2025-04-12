//
//  PredictionHomeScreenVC.swift
//  CricketMatchPredictionGame
//
//  Created by Aman Kumar Singh on 30/03/25.
//

import UIKit

class PredictionHomeScreenVC: UIViewController {

    
    @IBOutlet weak var descriptionHeaderView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Cricket League"
        let leaderBoardImage = UIImage(named: "leaderboard-logo")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: leaderBoardImage, style: .plain, target: self, action: #selector(leaderBoardBtnAction))
        setupHeaderView()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = collectionViewCompositionalLayout()
        collectionView.contentInset = .init(top: 10, left: 0, bottom: 10, right: 0)
        
    }
    @objc private func leaderBoardBtnAction() {
        
    }
    private func setupHeaderView() {
        descriptionHeaderView.layer.cornerRadius = 10
        descriptionHeaderView.layer.borderWidth = 0.5
        descriptionHeaderView.layer.borderColor = UIColor.customBackground.cgColor
    
    }
    private func collectionViewCompositionalLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { sectionIndex, environment in
            
            //item
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            //group
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.40))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
            group.interItemSpacing = .fixed(8)
            
            //section
            let section = NSCollectionLayoutSection(group: group)
           
            return section
        }
    }
}

extension PredictionHomeScreenVC : UICollectionViewDelegate{
    
}

extension PredictionHomeScreenVC : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MatchDescriptionCell.identifier, for: indexPath)
        return cell
    }
}

