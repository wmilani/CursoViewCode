//
//  SportTableViewCell.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 03/04/23.
//

import UIKit

class SportTableViewCell: UITableViewCell {

    var sportTableViewCellScrenn: SportTableViewCellScreen = SportTableViewCellScreen()
    
    static let identifier: String = "SportTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addSubview() {
        
        self.contentView.addSubview(self.sportTableViewCellScrenn)
    }
    
    func configConstraints(){
        self.sportTableViewCellScrenn.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
