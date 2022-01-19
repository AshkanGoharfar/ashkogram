//
//  ViewController.swift
//  ashkogram
//
//  Created by Ashkan Goharfar on 10/8/1400 AP.
//

import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        handleNotAuthenticated()
        // Do any additional setup after loading the view.
    }
    
    private func handleNotAuthenticated() {
        // Check auth status
        if Auth.auth().currentUser == nil {
            // Show log in
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }


}

