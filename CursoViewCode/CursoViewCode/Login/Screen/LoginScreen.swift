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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.loginLabel)
        self.setUpConstraits()
    }
    
  
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraits () {
        NSLayoutConstraint.activate([
        
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.loginLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        
        
        ])
    }
}
