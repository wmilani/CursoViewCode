//
//  UserDetailTableViewCell.swift
//  CursoViewCode
//
//  Created by Weslley Milani on 29/03/23.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {
    
    static let identifier: String = "UserDetailTableViewCell"
    
    lazy var descriptionCell:UserDetailView = {
        let view = UserDetailView()
        
        return view
    }()
    
    lazy var userImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var nameLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
    
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init (style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        self.configConstraintsDescriptionCell()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        self.contentView.addSubview(self.descriptionCell)
    }
    
    
    public func setUPCell(data:DataUser) {
        
        self.descriptionCell.nameLable.text = data.name
        self.descriptionCell.userImageView.image = UIImage(named: data.nameImage )
  
        

    }
    
    private func configConstraintsDescriptionCell(){
        self.descriptionCell.snp.makeConstraints{ make in
            make.edges.equalToSuperview()
        }
    }

}
