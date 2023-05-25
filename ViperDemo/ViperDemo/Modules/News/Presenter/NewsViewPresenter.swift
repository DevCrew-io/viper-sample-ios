//
//  HomeViewPresenter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class NewsViewPresenter {
    weak var view: NewsViewProtocol?
    var router: NewsViewRouting?
    var interactor: NewsViewInteractorInputProtocol?
    init(router: NewsViewRouting) {
        self.router = router
    }
}

extension NewsViewPresenter: NewsViewPresentation {
    func showPostDetail(forPost article: Article) {
        router?.showPostDetail(forPost: article)
    }
    
   
    func viewDidLoad() {
        view?.showActivityIndicator()
        interactor?.retriveList()
    }
    
    
}

extension NewsViewPresenter:NewsViewInteractorOutputProtocol {
    func didRetrievePosts(_ news: News) {
        view?.hideActivityIndicator()
        view?.showPosts(with: news)
    }
    
    func onError() {
        view?.hideActivityIndicator()
        view?.showError()
    }
    
    
}
