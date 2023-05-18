//
//  HomeViewInteractor.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class HomeVCInteractor:HomeViewInteractorInputProtocol {
    
    weak var presenter: HomeViewInteractorOutputProtocol?
    var remoteDatamanager: HomeRemoteDataManagerInputProtocol?
    
    func retriveList() {
        
        remoteDatamanager?.retriveList()
    }
    
}

extension HomeVCInteractor:HomeRemoteDataManagerOutputProtocol {
    func onRetriveList(with news: News) {
        presenter?.didRetrievePosts(news)
    }
    

    func onError() {
        presenter?.onError()
    }
    
    
}
