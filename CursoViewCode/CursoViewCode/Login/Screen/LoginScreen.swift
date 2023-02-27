//
//  LoginScreen.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 25/02/23.
//

import UIKit

class LoginScreen: UIView {
    lazy var loginLabel:UILabel = {
        let label  = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
        
    }()
    
    lazy var logoAppImageView:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        
        
        return image
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.loginLabel)
        self.addSubview(self.logoAppImageView)
        self.setUpConstraits()
    }
    
  
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraits () {
        NSLayoutConstraint.activate([
        
            self.loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,
                     constant: 20),
            self.loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            self.logoAppImageView.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor,
                    constant: 20),
            self.logoAppImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                    constant: 60),
            self.logoAppImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                    constant: -60),
            self.logoAppImageView.heightAnchor.constraint(equalToConstant: 200)
            
        
        
        ])
    }
}
