//
//  ViewController.swift
//  ChatWithJames_iOS
//
//  Created by James Estrada on 2/5/21.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validateAuth()
    }

    private func validateAuth() {
        // show login screen only if the user hasn't logged in previously
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen // in iOS13 if this is not specified, the controller pops up as a card by default, which can be dismissed.
            present(nav, animated: false)
        }
    }
}

