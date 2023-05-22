//
//  SignUpRouter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class SignUpRouter {
    
    private let viewController:UIViewController
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}

extension SignUpRouter:SignUpRouting {
    func dismissSignUp() {
        self.viewController.dismiss(animated: true)
    }
    
    func showHome() {
        let vc = HomeViewBuilder.build()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = vc
    }
    
    
}
