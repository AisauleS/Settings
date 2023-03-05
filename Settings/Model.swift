//
//  Model.swift
//  Settings
//
//  Created by Aisaule Sibatova on 04.03.2023.
//

import UIKit

struct Settings {
//    let title : String
    let options : [SettingsCellType]
}

enum SettingsCellType {
    case regularCell(model: RegularSettings)
    case switchCell(model: SwitchSettings)
    case statusCell(model: StatusSettings)
}

struct SwitchSettings {
    let title : String
    let icon : UIImage?
    let iconBackgroundColor : UIColor
//    let handler :
}

struct RegularSettings {
    let title : String
    let icon : UIImage?
    let iconBackgroundColor : UIColor
//    let handler : (() -> Void)
}

struct StatusSettings {
    let title : String
    let icon : UIImage?
    let iconBackgroundColor : UIColor
    let statusTitle : String
//    let handler :
}



