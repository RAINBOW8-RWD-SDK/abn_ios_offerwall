//
//  ViewController.swift
//  AbnDemo
//
//  Created by CHO sun chul on 4/16/25.
//

import UIKit
import AbnSDK
import AppTrackingTransparency

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let session = AbnSession.shared
        session.appId = "2950ba64-2cd7-4dd6-8dc3-5496bc87887d"
        session.userId = "testUserId2"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                // ...
                switch status {
                case .authorized:
                    print("성공")
                case .denied:
                    print("해당 앱 추적 권한 거부 또는 아이폰 설정->개인정보보호->추적 거부 상태")
                case .notDetermined:
                    print("승인 요청을 받기전 상태 값")
                case .restricted:
                    print("앱 추적 데이터 사용 권한이 제한된 경우")
                @unknown default:
                    print("에러 처리..")
                }
            }
        }
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

