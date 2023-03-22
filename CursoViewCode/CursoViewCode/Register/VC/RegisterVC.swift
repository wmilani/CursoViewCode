//
//  RegisterVC.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 13/03/23.
//

import UIKit
import Firebase

class RegisterVC: UIViewController {
    
    
    var registerScreen:RegisterScreen?
    
    var auth:Auth?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
        self.auth = Auth.auth()
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
        
        let email:String = self.registerScreen?.emailTextField.text ?? " "
        let password:String = self.registerScreen?.passwordTextField.text ?? " "
        
        self.auth?.createUser(withEmail: email, password:password, completion: { (result, error) in
            
            if error != nil {
                print("Erro ao cadastrar")
            } else {
                print("Sucesso ao cadastrar")
            }
        
        })
        
    }
}
