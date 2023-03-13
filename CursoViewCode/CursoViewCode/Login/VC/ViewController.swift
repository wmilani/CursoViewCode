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
        self.loginScreen?.configTextFieldDelegate(delegate: self)

        self.view.backgroundColor = UIColor(red: 70/255, green: 130/255, blue: 180, alpha: 1.0)
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension ViewController:UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() 
    }
    
    
}
