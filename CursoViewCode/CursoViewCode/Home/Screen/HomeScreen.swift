//
//  HomeScreen.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 27/03/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var tableView:UITableView = {
        let tableView = UITableView()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        
        
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(tableView   )
        self.setUpConstraints()
    }
    
    public func configTableViewProtocols(delegate:UITableViewDelegate, dataSource:UITableViewDataSource) {
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    

    func addSubView() {
        self.addSubview(self.tableView)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
        
            self.tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        
        
        
        
        
        
        
        ])
    }
    
    
    
}
