//
//  WebViewerController.swift
//  Audio App
//
//  Created by Keiichi Taketsuna on 2024/08/10.
//

import UIKit
import WebKit

class WebViewerController: UIViewController {

    private let webview = WKWebView()
    private let urlstring: String
    
    init(with urlstring: String){
        self.urlstring = urlstring
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        guard let url = URL(string: self.urlstring) else{
            self.dismiss(animated: true, completion: nil)
            return
        }
        self.webview.load(URLRequest(url: url))
    }
    
    private func setupUI() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(didTapDone))
        self.navigationController?.navigationBar.backgroundColor = .secondarySystemBackground
        self.view.addSubview(webview)
        self.webview.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            self.webview.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.webview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            self.webview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.webview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),

        ])
    }
    @objc private func didTapDone(){
        self.dismiss(animated: true, completion: nil)
    }
}
