//
//  NewsDetailProtocols.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 18/05/2023.
//

import Foundation

// MARK: - PRESENTER -> VIEW
protocol NewsDetailView :AnyObject{
    var presenter:NewsDetailPresentation? {get set}
    func populateUIWithData(_ article:Article)
}

// MARK: - VIEW -> PRESENTER
protocol NewsDetailPresentation {
    var view:NewsDetailView? {get set}
    var iteractor:NewsDetailInteractorInput? {get set}
    var router:NewsDetailRouting? {get set}
    
    func viewDidLoad()
    func  dismissNewsDetailView()
    
}
// MARK: - PRESENTER -> INTERACTOR
protocol NewsDetailInteractorInput {
    var presenter:NewsDetailInteractorOutPut? {get set}
    // PRESENTER -> INTERACTOR
}

protocol NewsDetailInteractorOutPut {
    // INTERACTOR -> PRESENTER
}

// MARK: - PRESENTER -> ROUTER
protocol NewsDetailRouting {
    func dismissNewsDetailView()
    
}
