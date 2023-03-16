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
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
    }
}

extension RegisterVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.registerScreen?.validaTextFields() 
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension RegisterVC:RegisterScreenProtocol {
    
    func actionBackButton() {
        print("Botao de voltar")
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        print("Botao de registrar")
    }
}
