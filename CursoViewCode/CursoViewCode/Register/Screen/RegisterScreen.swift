//
//  RegisterScreen.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 13/03/23.
//

import UIKit

class RegisterScreen: UIView {
    
    var backButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "seta voltar"), for: .normal)
        
        return button
    }()

    
    lazy var imageAddUser: UIImageView  = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "add-user")
        image.contentMode = .scaleAspectFit

        return image
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        self.setUpConstraints()
    }
    
    private func configSuperView (){
        self.addSubview(self.backButton)
        self.addSubview(self.imageAddUser)
    }
    
    private func configBackGround(){
        self.backgroundColor = UIColor (red: 24/255, green: 115/255, blue: 255/255, alpha: 1.0)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
        
            self.imageAddUser.topAnchor.constraint(equalTo:
                    self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.imageAddUser.centerXAnchor.constraint(equalTo:
                    self.centerXAnchor),
            self.imageAddUser.widthAnchor.constraint(equalToConstant: 150),
            self.imageAddUser.heightAnchor.constraint(equalToConstant: 150),
            
            
            self.backButton.topAnchor.constraint(equalTo:
                    self.imageAddUser.topAnchor),
            self.backButton.leadingAnchor.constraint(equalTo:
                    self.leadingAnchor, constant: 20)
            
        
        ])
    }
    
}
