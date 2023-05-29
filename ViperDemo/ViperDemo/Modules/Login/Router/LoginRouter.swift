//
//  LoginRouter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class LoginRouter {
    private let viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}

extension LoginRouter: LoginRouting {
    func showSignUp() {
        let vc = SignUpVCBuilder.build()
        self.viewController.navigationController?.pushViewController(vc, animated: true)
    }
    
    func showNewsView() {
        let vc = NewsViewBuilder.build()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = vc
    }
    
    
}
