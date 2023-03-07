//
//  ViewController.swift
//  Settings
//
//  Created by Aisaule Sibatova on 06.03.2023.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {
    
    public var model: SettingsCellType?
    
    public func fillSettings(with title: String){
        
        switch model {
        case .regularCell:
            label.text = "\(title) settings configuration"
        case .switchCell:
            print("")
        case .statusCell:
            label.text = "\(title) settings configuration"
        case .none:
            print("")
        }
    }
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 26, weight: .light)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(label)
        setupLayout()
    }
    
    func setupLayout() {
        
        label.snp.makeConstraints{make in
            make.center.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(60)
            
        }
    }
}
