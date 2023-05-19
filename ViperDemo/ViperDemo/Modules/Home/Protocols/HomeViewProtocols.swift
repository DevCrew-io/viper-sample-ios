//
//  HomeViewProtocols.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import Foundation

// MARK: - PRESENTER -> VIEW
protocol HomeViewProtocol:AnyObject {
    var presenter:HomeViewPresentation? {get set}
    func showPosts(with news:News)
    func showError()
    func showActivityIndicator()
    func hideActivityIndicator()
}

// MARK: - VIEW -> PRESENTER
protocol HomeViewPresentation:AnyObject {
    var view:HomeViewProtocol? {get set}
    var interactor:HomeViewInteractorInputProtocol? {get set}
    var router:HomeViewRouting? {get set}
    func viewDidLoad()
    func showPostDetail(forPost article:Article)
}

// MARK: - PRESENTER -> INTERACTOR
protocol HomeViewInteractorInputProtocol {
    var presenter: HomeViewInteractorOutputProtocol? { get set }
    var remoteDatamanager: HomeRemoteDataManagerInputProtocol? { get set }
    // PRESENTER -> INTERACTOR
    func retriveList()
}
protocol HomeViewInteractorOutputProtocol:AnyObject {
    // INTERACTOR -> PRESENTER
    func didRetrievePosts(_ news: News)
    func onError()
}

// MARK: -  INTERACTOR -> PRESENTER
protocol HomeRemoteDataManagerInputProtocol {
    var remoteRequestHandler:HomeRemoteDataManagerOutputProtocol? { get set }
    // INTERACTOR -> REMOTEDATAMANAGER
    func retriveList()
}
protocol HomeRemoteDataManagerOutputProtocol {
    // REMOTEDATAMANAGER -> INTERACTOR
    func onRetriveList(with news:News)
    func onError()
}

// MARK: - PRESENTER -> ROUTER
protocol HomeViewRouting {
    func showPostDetail(forPost article:Article)
}

