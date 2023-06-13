//
//  SportCollectionViewCellScreen.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 02/05/23.
//

import UIKit

class SportCollectionViewCellScreen: UIView {
    
    lazy var imageView:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        
        return image
    } ()
    
    
    lazy var sportName:UILabel = {
        let label = UILabel ()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.textColor = .red
        
        return label
    } ()
    

  
    override init (frame: CGRect) {
        super.init(frame: frame)
        self.addSubViewHierarchy()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubViewHierarchy() {
        
        self.addSubview(imageView)
        self.addSubview(sportName)
     
       
        }
    
    
    func configConstraints (){
        NSLayoutConstraint.activate([
            
            self.imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self .imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.imageView.bottomAnchor.constraint(equalTo: self.sportName.topAnchor, constant: -10),

            self.sportName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.sportName.leadingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.sportName.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            self.sportName.heightAnchor.constraint(equalToConstant: 20)

        
        ])
        }
    
    
    }
    





