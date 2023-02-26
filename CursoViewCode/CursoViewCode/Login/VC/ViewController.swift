//
//  ViewController.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 25/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .blue
        
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

