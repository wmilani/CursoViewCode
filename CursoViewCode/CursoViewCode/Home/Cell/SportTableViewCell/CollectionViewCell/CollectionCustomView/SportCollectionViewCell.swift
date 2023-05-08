//
//  SportCollectionViewCell.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 02/05/23.
//

import UIKit

class SportCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String  = "SportCollectionViewCell"
    
   let sportCollectionViewCellScreen: SportCollectionViewCellScreen = SportCollectionViewCellScreen ()
    
 
    
    override init(frame: CGRect ) {
        super.init(frame: frame )
        
        self.addSubview()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     func addSubview() {
         
         self.sportCollectionViewCellScreen.translatesAutoresizingMaskIntoConstraints = false
         self.contentView.addSubview(self.sportCollectionViewCellScreen)
        
    }
    
    func configConstraints (){
        NSLayoutConstraint.activate([
        
            self.sportCollectionViewCellScreen.topAnchor.constraint(equalTo: self.topAnchor),
            self.sportCollectionViewCellScreen.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.sportCollectionViewCellScreen.rightAnchor.constraint(equalTo:self.rightAnchor),
            self.sportCollectionViewCellScreen.bottomAnchor.constraint(equalTo:self.bottomAnchor),
            
        
        

        ])
    }
}
