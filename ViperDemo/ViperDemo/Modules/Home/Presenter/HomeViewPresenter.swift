//
//  HomeViewPresenter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class HomeViewPresenter {
    weak var view:HomeViewProtocol?
    var router:HomeViewRouting?
    var interactor:HomeViewInteractorInputProtocol?
    init(router: HomeViewRouting) {
        self.router = router
    }
}

extension HomeViewPresenter: HomeViewPresentation {
    func showPostDetail(forPost article: Article) {
        router?.showPostDetail(forPost: article)
    }
    
   
    func viewDidLoad() {
        view?.showActivityIndicator()
        interactor?.retriveList()
    }
    
    
}

extension HomeViewPresenter:HomeViewInteractorOutputProtocol {
    func didRetrievePosts(_ news: News) {
        view?.hideActivityIndicator()
        view?.showPosts(with: news)
    }
    
    func onError() {
        view?.hideActivityIndicator()
        view?.showError()
    }
    
    
}
