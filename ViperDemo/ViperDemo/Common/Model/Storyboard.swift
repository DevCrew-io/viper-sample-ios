//
//  Storyboard.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

enum Storyboard {
    case login
    case main
    var instance: UIStoryboard {
        switch self {
        case.login:
            return UIStoryboard.init(name: "Login", bundle: nil)
        case.main:
            return UIStoryboard.init(name: "Main", bundle: nil)
        }
    }
}
