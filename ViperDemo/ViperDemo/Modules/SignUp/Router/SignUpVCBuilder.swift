//
//  SignUpVCBuilder.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class SignUpVCBuilder {
    static func build()->UIViewController {
        let storyboard = Storyboard.login.instance
        let signUpVC = storyboard.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        let router = SignUpRouter(viewController: signUpVC)
        let presenter = SignUpPresenter(router: router)
        presenter.view = signUpVC
        signUpVC.presenter = presenter
        return signUpVC
    }
}
