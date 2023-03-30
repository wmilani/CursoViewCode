//
//  UserDetailView.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 30/03/23.
//

import UIKit

class UserDetailView: UIView {

    
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
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview()
//        self.setUpConstraints()
        self.configUserImageViewConstraints()
        self.configNameLabelConstraints()
        
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addSubview() {
        self.addSubview(self.userImageView)
        self.addSubview(self.nameLable)
        
    }
    
//    private func setUpConstraints (){
//        NSLayoutConstraint.activate([
//
//            self.userImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            self.userImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
//            self.userImageView.heightAnchor.constraint(equalToConstant: 80),
//            self.userImageView.widthAnchor.constraint(equalToConstant: 80),
//
//
//            self.nameLable.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            self.nameLable.leadingAnchor.constraint(equalTo: self.userImageView.trailingAnchor, constant: 20),
//
//        ])
//
//    }
    
    func configUserImageViewConstraints(){
        self.userImageView.snp.makeConstraints { make in
            make.centerY.leading.equalToSuperview()
            make.height.width.equalTo(80)
        }
        
    }
    
    func configNameLabelConstraints() {
        self.nameLable.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(self.userImageView.snp.trailing) .offset(20)
        }
    }
    
    
    
}
