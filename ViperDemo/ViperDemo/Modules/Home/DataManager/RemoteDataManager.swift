//
//  RemoteDataManager.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 18/05/2023.
//

import Foundation
import Alamofire

class RemoteDataManager:HomeRemoteDataManagerInputProtocol {
    
    var remoteRequestHandler: HomeRemoteDataManagerOutputProtocol?
    
    func retriveList() {
        
        AF.request(Endpoints.News.headline.url,method: .get).responseString { response in
            switch response.result {
                
            case .success(_):
                guard let getData = response.data else {
                    return
                }
                
                do {
                    let news = try JSONDecoder().decode(News.self, from: getData)
                    self.remoteRequestHandler?.onRetriveList(with: news)
                } catch (_) {
                    self.remoteRequestHandler?.onError()
                }
            case .failure(_ ):
                self.remoteRequestHandler?.onError()
            }
            
        }
        
    }
}
