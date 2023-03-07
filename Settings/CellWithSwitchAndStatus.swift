//
//  CellWithSwitchAndStatus.swift
//  Settings
//
//  Created by Aisaule Sibatova on 05.03.2023.
//

import UIKit
import SnapKit

class StatusTableViewCell: UITableViewCell {
    
    static let identifier = "StatusTableViewCell"
    
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
        return label
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textAlignment = .right
        label.textColor = .lightGray
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
    
    public func configure(with model : StatusSettings) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
        statusLabel.text = model.statusTitle
    }
    
    private func setupHierarchy() {
        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconImageView)
        contentView.addSubview(label)
        contentView.addSubview(statusLabel)
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
        
        statusLabel.snp.makeConstraints {make in
            make.trailing.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
        }
    }
}
