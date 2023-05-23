//
//  HomeViewProtocols.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import Foundation

// MARK: - PRESENTER -> VIEW
protocol NewsViewProtocol:AnyObject {
    var presenter:NewsViewPresentation? {get set}
    func showPosts(with news:News)
    func showError()
    func showActivityIndicator()
    func hideActivityIndicator()
}

// MARK: - VIEW -> PRESENTER
protocol NewsViewPresentation:AnyObject {
    var view:NewsViewProtocol? {get set}
    var interactor:NewsViewInteractorInputProtocol? {get set}
    var router:NewsViewRouting? {get set}
    func viewDidLoad()
    func showPostDetail(forPost article:Article)
}

// MARK: - PRESENTER -> INTERACTOR
protocol NewsViewInteractorInputProtocol {
    var presenter: NewsViewInteractorOutputProtocol? { get set }
    var remoteDatamanager: NewsRemoteDataManagerInputProtocol? { get set }
    // PRESENTER -> INTERACTOR
    func retriveList()
}
protocol NewsViewInteractorOutputProtocol:AnyObject {
    // INTERACTOR -> PRESENTER
    func didRetrievePosts(_ news: News)
    func onError()
}

// MARK: -  INTERACTOR -> PRESENTER
protocol NewsRemoteDataManagerInputProtocol {
    var remoteRequestHandler:NewsRemoteDataManagerOutputProtocol? { get set }
    // INTERACTOR -> REMOTEDATAMANAGER
    func retriveList()
}
protocol NewsRemoteDataManagerOutputProtocol {
    // REMOTEDATAMANAGER -> INTERACTOR
    func onRetriveList(with news:News)
    func onError()
}

// MARK: - PRESENTER -> ROUTER
protocol NewsViewRouting {
    func showPostDetail(forPost article:Article)
}

