//
//  HomeViewInteractor.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class NewsViewInteractor: NewsViewInteractorInputProtocol {
    
    weak var presenter: NewsViewInteractorOutputProtocol?
    var remoteDatamanager: NewsRemoteDataManagerInputProtocol?
    
    func retriveList() {
        
        remoteDatamanager?.retriveList()
    }
    
}

extension NewsViewInteractor: NewsRemoteDataManagerOutputProtocol {
    func onRetriveList(with news: News) {
        presenter?.didRetrievePosts(news)
    }
    

    func onError() {
        presenter?.onError()
    }
    
    
}
