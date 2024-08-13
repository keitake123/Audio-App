//
//  RegisterUserRequest.swift
//  Audio App
//
//  Created by Keiichi Taketsuna on 2024/08/13.
//

import Foundation

struct RegisterUserRequest: Codable {
    let email: String
    let username: String
    let password: String
}
