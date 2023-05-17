//
//  HomeViewBuilder.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class HomeViewBuilder {
    static func build()-> UIViewController {
        let storyboard = Storyboard.main.instance
        let homeVC = storyboard.instantiateViewController(identifier: "HomeVC") as! HomeVC
        let router = HomeViewRouter(viewController: homeVC)
        let presenter = HomeViewPresenter(router: router)
        homeVC.presenter = presenter
        presenter.view = homeVC
        return homeVC
    }
}
