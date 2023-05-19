//
//  HomeViewRouter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class HomeViewRouter {
    private let viewController:UIViewController
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}

extension HomeViewRouter : HomeViewRouting {
    func showPostDetail(forPost article: Article) {
        
        let view = NewsDetailBuilder.build(with: article)
        self.viewController.present(view, animated: true)
        
    }
    
    
}
