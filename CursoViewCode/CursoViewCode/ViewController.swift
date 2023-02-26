//
//  ViewController.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 25/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var loginLabel:UILabel = {
        let label  = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .blue
        self .view.addSubview(self.loginLabel)
        self.setUpConstraits()

    }
    
    private func setUpConstraits () {
        NSLayoutConstraint.activate([
        
            self.loginLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.loginLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        
        
        ])
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

