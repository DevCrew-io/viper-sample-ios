//
//  NewsDetailRouter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 18/05/2023.
//

import UIKit

class NewsDetailRouter {
    private let viewController:UIViewController
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}

extension NewsDetailRouter: NewsDetailRouting {
    func dismissNewsDetailView() {
        
        self.viewController.dismiss(animated: true)
    }
    
    
}
