//
//  LoginBuilder.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class LoginBuilder {
    
    static func build() -> UIViewController {
        let loginVC =  LoginVC()
        let navigation = UINavigationController(rootViewController: loginVC)
        let router = LoginRouter(viewController: loginVC)
        let presenter = LoginPresenter(loginRouter: router)
        let interactor = LoginViewInteractor()
        let localStorage = LocalDataStorage()
        interactor.localDataStorage = localStorage
        loginVC.presenter = presenter
        presenter.view = loginVC
        presenter.interactor = interactor
        interactor.presenter = presenter
        return navigation
    }
}
