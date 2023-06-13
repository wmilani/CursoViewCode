//
//  HomeVC.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 27/03/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen:HomeScreen?
    var dataUser: [DataUser] = [DataUser(name: "Weslley", nameImage: "menino1"),
                                          DataUser(name: "Felipe", nameImage: "menino2"),
                                          DataUser(name: "Michelle", nameImage: "menina1")
                                                ]
    
    var dataSport: [Sport] = [Sport(name: "Corrida", nameImage: "corrida"),
                                             Sport(name: "Boxe", nameImage: "boxe"),
                                             Sport(name: "Ciclismo", nameImage: "ciclismo"),
                                             Sport(name: "Natação", nameImage: "natacao"),
                                             Sport(name: "Yoga", nameImage: "ioga"),
     
                                            ]
    
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreen?.configTableViewProtocols(delegate: self, dataSource: self)

        
    }
    
}

extension HomeVC:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataUser.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 3 {
            let cell:SportTableViewCell? = tableView.dequeueReusableCell(withIdentifier: SportTableViewCell.identifier, for: indexPath) as? SportTableViewCell
            
            cell?.dataCollection(data: self.dataSport)
                
            return cell ?? UITableViewCell()
        }
        
        
        let cell:UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.identifier, for: indexPath) as? UserDetailTableViewCell
        cell?.setUPCell(data: self.dataUser[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
