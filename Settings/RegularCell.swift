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
    
    private let iconContainer: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 6
        return view
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
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
    
    public func configure(with model : RegularSettings) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
    }
    
    private func setupHierarchy() {
        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconImageView)
        contentView.addSubview(label)
        contentView.clipsToBounds = true
    }
    
    private func setupLayout() {
        iconContainer.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(16)
            make.height.equalTo(29)
            make.width.equalTo(30)
            make.centerY.equalToSuperview()
        }
        
        iconImageView.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(3)
            make.bottom.equalToSuperview().offset(-3)
            make.leading.equalToSuperview().offset(3)
            make.trailing.equalToSuperview().offset(-3)
        }
        
        label.snp.makeConstraints {make in
            make.leading.equalTo(iconContainer.snp.leading).offset(42)
            make.centerY.equalToSuperview()
            
        }
    }
}
