//
//  RegisterVC.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 13/03/23.
//

import UIKit

class RegisterVC: UIViewController {
    
    
    var registerScreen:RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
