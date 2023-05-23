//
//  WindowBuilder.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class WindowBuilder {
    
    static func build(frame:CGRect)-> UIWindow {
        let window = Window(frame: frame)
        let router = WindowRouter(window,
                                  submodules: (loginModule:LoginBuilder.build,homeModule:NewsViewBuilder.build
        ))
        let presenter = WindowPresenter(router: router)
        window.presenter = presenter
        return window
    }
}
