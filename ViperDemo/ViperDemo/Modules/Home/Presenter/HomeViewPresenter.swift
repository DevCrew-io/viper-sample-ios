//
//  HomeViewPresenter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class HomeViewPresenter {
    weak var view:HomeViewProtocol?
    private let router:HomeViewRouting
    init(router: HomeViewRouting) {
        self.router = router
    }
}

extension HomeViewPresenter: HomeViewPresentation {
    
}
