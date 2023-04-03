//
//  TableViewCell.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 02/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var sportTableViewCellScrenn: SportTableViewCellScreen = SportTableViewCellScreen()
    
    static let identifier: String = "SportTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
