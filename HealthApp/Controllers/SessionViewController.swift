//
//  SessionViewController.swift
//  HealthApp
//
//  Created by Saadet Şimşek on 24/02/2025.
//

import UIKit

class SessionViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Session"
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
      
    }

    override func navButtonLeftButtonHandler() {
        print("session nav bar button left")
    }


}
