//
//  NewsDetailPresenter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 18/05/2023.
//

import Foundation

class NewsDetailPresenter: NewsDetailPresentation {
   
   weak var view: NewsDetailView?
    var iteractor: NewsDetailInteractorInput?
    var router: NewsDetailRouting?
    var article: Article!
    
    func viewDidLoad() {
        print("Presenter called")
        view?.populateUIWithData(article)
    }
    func dismissNewsDetailView() {
        
        router?.dismissNewsDetailView()
    }
    
}
extension NewsDetailPresenter: NewsDetailInteractorOutPut {
    
}
