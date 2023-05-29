//
//  WindowRouter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class WindowRouter {
    
    private unowned let window: UIWindow
    private var loginView: UIViewController
    private var homeView: UIViewController
    
    typealias SubModules = (loginModule: ()->UIViewController,
                            homeModule: ()-> UIViewController)
    enum Kind {
        case login
        case home
    }
    
    init(_ window: Window ,submodules: SubModules) {
        
        self.window = window
        self.loginView = submodules.loginModule()
        self.homeView = submodules.homeModule()
    }
    
}

extension WindowRouter: WindowRouting {
    func routTo(kind: WindowRouter.Kind) {
        
        var viewController:UIViewController
        
        switch kind {
        case.login:
            viewController = loginView
        case.home:
            viewController =  homeView
            
        }
        self.window.rootViewController = viewController
        self.window.makeKeyAndVisible()
    }
    
    
}
