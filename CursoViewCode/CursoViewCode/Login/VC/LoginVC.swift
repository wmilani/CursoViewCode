//
//  ViewController.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 25/02/23.
//

import UIKit
import Firebase

class LoginVC: UIViewController {
    
    var auth: Auth?
    
    var loginScreen: LoginScreen?
    
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
        self.auth  = Auth.auth()
        

        self.view.backgroundColor = UIColor(red: 70/255, green: 130/255, blue: 180, alpha: 1.0)
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension LoginVC:LoginScreenProtocol{
    func actionRegisterButton() {
        
        let vc:RegisterVC = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func actionLoginButton() {
        
        guard let login = self.loginScreen else {return}
            
            self.auth?.signIn(withEmail: login.getEmail(), password: login.getPassword(), completion: { (usuario,  error)  in
                
                if error !=  nil {
                    print("Atencao dados incorretos, verifique e tente novamente")
                } else {
                
                    if  usuario  == nil {
                        print("tivemos um problema inesperado, tente novamente mais tarde.")
                    } else {
                        print("parabens, usuario logado com sucesso")
                    }
                    
                }
            })
        }
      
        
    }
    
    
extension LoginVC:UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
    }
    
    internal func textFieldDidBeginEditing(_ textField: UITextField) {
        print("TextFieldDidBeginInEditing")
    }
    
    internal func textFieldDidEndEditing(_ textField: UITextField) {
        print("TexFieldDidEngInEditing")
        self.loginScreen?.validaTextFields()
    }
    
}
