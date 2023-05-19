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
        let presenter:SignUpViewPresentation&SignUpViewInteractoOutPut = SignUpPresenter(router: router)
        presenter.view = view
        view.presenter = presenter
        return view
    }
}
