//
//  HTTP.swift
//  Audio App
//
//  Created by Keiichi Taketsuna on 2024/08/13.
//

import Foundation

enum HTTP {
    
    enum Method: String {
        case get = "GET"
        case post = "POST"
    }
    
    enum Headers {
        
        enum Key: String {
            case contentType = "Content-Type"
        }
        
        enum Value: String {
            case applicationJson = "application/json"
        }
        
    }
    
}
