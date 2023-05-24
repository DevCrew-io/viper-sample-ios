//
//  WindowInteracor.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 23/05/2023.
//

class WindowInteractor:WindowInteractorProtocol {
   weak var presenter: WindowPresentation?
    
    func userLogedIn() {
        presenter?.initialized()
    }
    
    
}
