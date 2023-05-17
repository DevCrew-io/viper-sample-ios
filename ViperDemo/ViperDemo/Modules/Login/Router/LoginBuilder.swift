//
//  LoginBuilder.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class LoginBuilder {
    
   static func build() -> UIViewController {
        let storyboard = Storyboard.login.instance
        let loginVC = storyboard.instantiateViewController(identifier: "LoginVC") as! LoginVC
        let router = LoginRouter(viewController: loginVC)
        let presenter = LoginPresenter(loginRouter: router)
        loginVC.loginPresenter = presenter
        presenter.view = loginVC
        return loginVC
    }
}
