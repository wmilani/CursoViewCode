//
//  SportTableViewCellScreen.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 02/04/23.
//

import UIKit

class SportTableViewCellScreen: UIView {

    var collectionView:UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout:
            UICollectionViewLayout.init())
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .red
        collectionView.delaysContentTouches = false
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        collectionView.setCollectionViewLayout(layout, animated: false)
        
        return collectionView
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview()
        self.configContraintsCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        self.addSubview(collectionView)
        
    }
    
    
    func configContraintsCollectionView() {
        self.collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}
