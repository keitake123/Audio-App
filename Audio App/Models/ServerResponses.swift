//
//  ServerResponses.swift
//  Audio App
//
//  Created by Keiichi Taketsuna on 2024/08/13.
//

import Foundation

struct SucessResponse: Decodable {
    let success: String
}

struct ErrorResponse: Decodable {
    let error: String
}
