//
//  File.swift
//  Settings
//
//  Created by Aisaule Sibatova on 04.03.2023.
//

import UIKit

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section].options[indexPath.row]
        
        switch model.self {
        case .regularCell(let model):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: SettingTableViewCell.identifier,
                for: indexPath
            ) as? SettingTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
        case .switchCell(let model):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: SwitchTableViewCell.identifier,
                for: indexPath
            ) as? SwitchTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            
            return cell
        case .statusCell(let model):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: StatusTableViewCell.identifier,
                for: indexPath
            ) as? StatusTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailViewController()
        tableView.deselectRow(at: indexPath, animated: true)
        let type = models[indexPath.section].options[indexPath.row]
        viewController.model = models[indexPath.section].options[indexPath.row]
        
        switch type {
        case .regularCell(let model):
            navigationController?.pushViewController(viewController, animated: true)
            viewController.fillSettings(with: model.title)
        case .switchCell(_):
            print("nothing happens")
        case .statusCell(let model):
            navigationController?.pushViewController(viewController, animated: true)
            viewController.fillSettings(with: model.title)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
}
