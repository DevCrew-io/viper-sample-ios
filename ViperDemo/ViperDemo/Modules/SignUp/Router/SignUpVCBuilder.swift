//
//  SignUpVCBuilder.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class SignUpVCBuilder {
    static func build()->UIViewController {
        let view = SignUpVC()
        let router = SignUpRouter(viewController: view)
        let presenter = SignUpPresenter(router: router)
        let interactor = SignupInteractor()
        presenter.view = view
        view.presenter = presenter
        presenter.interactor = interactor
        interactor.presenter = presenter
        return view
    }
}
