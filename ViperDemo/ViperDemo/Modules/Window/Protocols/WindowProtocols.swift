//
//  WindowProtocols.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import Foundation

// MARK: - VIEW -> PRESENTER
protocol windowViewProtocol:AnyObject {
    var presenter:WindowPresentation?{get set}
}
// MARK: - PRESENTER -> VIEW
protocol WindowPresentation:AnyObject {
    var view:windowViewProtocol?{get set}
    var interactor:WindowInteractorProtocol?{get set}
    func initialized()
}
// MARK: - PRESENTER -> INTERACTOR
protocol WindowInteractorProtocol {
    var presenter:WindowPresentation?{get set}
    func userLogedIn()
}

// MARK: -  INTERACTOR -> PRESENTER


// MARK: - PRESENTER -> ROUTER

protocol WindowRouting {
    
    func routTo(kind:WindowRouter.Kind)
}
