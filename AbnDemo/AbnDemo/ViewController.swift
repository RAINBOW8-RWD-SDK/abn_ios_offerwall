//
//  ViewController.swift
//  AbnDemo
//
//  Created by CHO sun chul on 4/16/25.
//

import UIKit
import AbnSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let session = AbnSession.shared
        session.appId = "2950ba64-2cd7-4dd6-8dc3-5496bc87887d"
        session.userId = "testUserId"
    }
    
    @IBAction func showOfferwall() {
        let vc = AdOfferwallViewController()
        vc.title = "ABN Offerwall"
        vc.modalPresentationStyle = .fullScreen
        
        let navController = UINavigationController(rootViewController: vc)
        navController.modalPresentationStyle = .fullScreen
        navController.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        self.present(navController, animated: true)
    }
    
}

