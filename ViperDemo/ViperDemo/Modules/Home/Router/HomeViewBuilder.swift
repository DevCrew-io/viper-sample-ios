//
//  HomeViewBuilder.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class HomeViewBuilder {
    static func build()-> UIViewController {
        let storyboard = Storyboard.main.instance
        let view = storyboard.instantiateViewController(identifier: "HomeVC") as! HomeVC
        let router = HomeViewRouter(viewController: view)
        let presenter: HomeViewPresentation & HomeViewInteractorOutputProtocol = HomeViewPresenter(router: router)
        //HomeViewPresenter(router: router)
        view.presenter = presenter
        presenter.view = view
        
       
        var interactor: HomeViewInteractorInputProtocol & HomeRemoteDataManagerOutputProtocol = HomeVCInteractor()
       
        var remoteDataManager: HomeRemoteDataManagerInputProtocol = RemoteDataManager()
        
        
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
