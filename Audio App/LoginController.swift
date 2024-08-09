//
//  LoginController.swift
//  Audio App
//
//  Created by Keiichi Taketsuna on 2024/08/07.
//

import UIKit

class LoginController: UIViewController {
        
        // MARK: - UI Components
    private let headerView = AuthHeaderView(title: "Sign in", subtitle: "Sign in to your account")
        
        // MARK: - Lifecycle

        override func viewDidLoad() {
            super.viewDidLoad()
            self.setupUI()
            
        }
        
    // MARK: - UI Setup
    private func setupUI() {
        self.view.addSubview(headerView)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            self.headerView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 270)
    
        ])
    }
    
        // MARK: - Selectors
    }
