//
//  WindowPresenter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit


class WindowPresenter {
    
    private let router:WindowRouter
    
    init(router: WindowRouter) {
        self.router = router
        self.initialized()
    }
}

extension WindowPresenter: WindowPresentation {
    func initialized() {
        
        self.router.routTo(kind: .login)
    }
}
