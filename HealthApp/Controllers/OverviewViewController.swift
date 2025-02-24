//
//  ViewController.swift
//  HealthApp
//
//  Created by Saadet Şimşek on 24/02/2025.
//

import UIKit

class OverviewViewController: BaseViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.overview
    }


}

