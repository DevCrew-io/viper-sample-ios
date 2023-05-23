//
//  HomeViewBuilder.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class NewsViewBuilder {
    static func build()-> UIViewController {
        let storyboard = Storyboard.main.instance
        let view = storyboard.instantiateViewController(identifier: "NewsVC") as! NewsVC
        let router = NewsViewRouter(viewController: view)
        let presenter: NewsViewPresentation & NewsViewInteractorOutputProtocol = NewsViewPresenter(router: router)
        //HomeViewPresenter(router: router)
        view.presenter = presenter
        presenter.view = view
        
       
        var interactor: NewsViewInteractorInputProtocol & NewsRemoteDataManagerOutputProtocol = NewsViewInteractor()
       
        var remoteDataManager: NewsRemoteDataManagerInputProtocol = RemoteDataManager()
        
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.remoteDatamanager = remoteDataManager
        remoteDataManager.remoteRequestHandler = interactor
        
        return view
    }
}
