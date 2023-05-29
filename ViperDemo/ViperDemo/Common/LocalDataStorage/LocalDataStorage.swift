//
//  DataBase.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 23/05/2023.
//

import Foundation

protocol LocalDataStorageInterface {
    func storeUser(email: String)
    func userAlreadyLogedIn(forKey: String)-> Bool!
}

class LocalDataStorage: LocalDataStorageInterface {
    
    func userAlreadyLogedIn(forKey: String) -> Bool! {
        
        guard  UserDefaults.standard.value(forKey: "email") != nil else {
            return false
        }
        return true
    }
    
    
    func storeUser(email: String) {
        
        UserDefaults.standard.setValue(email, forKey: "email")
    }
    
    
}
