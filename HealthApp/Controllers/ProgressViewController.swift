//
//  ProgressViewController.swift
//  HealthApp
//
//  Created by Saadet Şimşek on 24/02/2025.
//

import UIKit

class ProgressViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Progress"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
    
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Details")
    }
    

}
