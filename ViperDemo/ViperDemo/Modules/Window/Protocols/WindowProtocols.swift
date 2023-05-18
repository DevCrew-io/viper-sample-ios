//
//  WindowProtocols.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import Foundation

// MARK: - VIEW -> PRESENTER
protocol WindowPresentation {
    func initialized()
}
// MARK: - PRESENTER -> VIEW

// MARK: - PRESENTER -> INTERACTOR


// MARK: -  INTERACTOR -> PRESENTER


// MARK: - PRESENTER -> ROUTER

protocol WindowRouting {
    
    func routTo(kind:WindowRouter.Kind)
}
