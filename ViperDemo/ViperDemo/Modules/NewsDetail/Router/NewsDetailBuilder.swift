//
//  NewsDetailBuilder.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 18/05/2023.
//

import UIKit

class NewsDetailBuilder {
    
    static func build(with article: Article) -> UIViewController{ 
        
        let storyboard = Storyboard.main.instance
        let view = storyboard.instantiateViewController(identifier: "NewsDetailVC") as! NewsDetailVC
        let router = NewsDetailRouter(viewController: view)
        let presenter = NewsDetailPresenter()
        let interactor = NewsDetailInteractor()
        
        view.presenter = presenter
        presenter.view = view
        
        presenter.iteractor = interactor
        presenter.router = router
        presenter.article = article
        
        return view
    }
    
}
