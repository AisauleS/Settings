//
//  TableViewCell.swift
//  Settings
//
//  Created by Aisaule Sibatova on 04.03.2023.
//

import UIKit
import SnapKit

    
class SettingTableViewCell: UITableViewCell {
    static let identifier = "SettingTableViewCell"
    
    
    private let iconContainer : UIView = {
        let view = UIView()
        
//        let view = UIView(frame: CGRect(x: 16, y: 5, width: 65, height: 40))
//        view.layer.frame = .infinite
        


        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    
    private let iconImageView : UIImageView = {
        let imageView = UIImageView()
//        let imageView = UIImageView(frame: CGRect(x: 32, y: 10, width: 20, height: 20))

        imageView.tintColor = .white
//        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let label : UILabel = {
        let label = UILabel()
//
        label.numberOfLines = 1
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
        accessoryType = .disclosureIndicator
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupHierarchy() {

        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconImageView)
        contentView.addSubview(label)
        contentView.clipsToBounds = true


//        self.addSubview(iconContainer)
//        iconContainer.addSubview(iconImageView)
//        self.addSubview(label)
//        self.clipsToBounds = true
        
        
    }
    
    private func setupLayout() {

        
        iconContainer.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(16)
            make.height.equalTo(29)
            make.width.equalTo(30)
//            make.center.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        iconImageView.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(3)
            make.bottom.equalToSuperview().offset(-3)
            make.leading.equalToSuperview().offset(3)
            make.trailing.equalToSuperview().offset(-3)
//            make.top.bottom.leading.trailing.equalToSuperview().offset(3)
        }
        
        label.snp.makeConstraints {make in
            make.leading.equalTo(iconContainer.snp.leading).offset(42)
//            make.top.equalToSuperview().offset(5)
            make.centerY.equalToSuperview()

        }
        
    }
    
    
    
    public func configure(with model : RegularSettings) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
    }
    
    
}




