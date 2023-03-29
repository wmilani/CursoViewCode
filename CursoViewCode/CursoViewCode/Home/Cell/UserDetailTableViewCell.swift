//
//  UserDetailTableViewCell.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 29/03/23.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {
    
    static let identifier: String = "UserDetailTableViewCell"
    
    lazy var userImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var nameLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        
        
        return label
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init (style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        self.setUpConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubview() {
        self.contentView.addSubview(self.userImageView)
        self.contentView.addSubview(self.nameLable)
    }
    
    
    public func setUPCell(data:DataUser) {
    
        self.nameLable.text = data.name
        self.userImageView.image = UIImage(named: data.nameImage)
        
        
    }
   
    
    
    private func setUpConstraints (){
        NSLayoutConstraint.activate([
        
            self.userImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.userImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.userImageView.heightAnchor.constraint(equalToConstant: 80),
            self.userImageView.widthAnchor.constraint(equalToConstant: 80),
            
            
            self.nameLable.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.nameLable.leadingAnchor.constraint(equalTo: self.userImageView.trailingAnchor, constant: 20),
        
        
        
        
        ]
        )
    }

}
