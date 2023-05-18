//
//  EndPoints.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 18/05/2023.
//

import Foundation

struct API {
    static let baseUrl = "http://newsapi.org/"
    static let apiKey = "d62c05ff6fb94de4bc4c7da609942e01"
}


protocol Endpoint {
    var path: String { get }
    var url: String { get }
}

enum Endpoints {
    
    enum News: Endpoint {
        
        case headline
        case category(category: String)
        case video
        
        public var path: String {
            switch self {
            case .headline: return "/top-headlines?country=id&category=technology&apiKey=\(API.apiKey)"
            case .category(let category):
                return "/top-headlines?country=id&category=\(category)&apiKey=\(API.apiKey)"
            case .video:
                return "/everything?domains=youtube.com&apiKey=\(API.apiKey)"
            }
        }
        
        
        public var url: String {
            return "\(API.baseUrl)v2\(path)"
        }
    }
}

