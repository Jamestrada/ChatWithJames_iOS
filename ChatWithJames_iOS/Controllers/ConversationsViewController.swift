//
//  ViewController.swift
//  ChatWithJames_iOS
//
//  Created by James Estrada on 2/5/21.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen // in iOS13 if this is not specified, the controller pops up as a card by default, which can be dismissed.
            present(nav, animated: false)
        }
    }


}

