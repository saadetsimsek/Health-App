//
//  NavigationBarViewController.swift
//  HealthApp
//
//  Created by Saadet Şimşek on 24/02/2025.
//

import UIKit

final class NavigationBarViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    private func configure(){
        view.backgroundColor = .systemBackground
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [.foregroundColor: Resources.Colors.titleGrey,
                                                                .font: Resources.Fonts.helveticaRegular(with: 17)
                                                                
        ]
        
        navigationBar.addBottomBorder(with: Resources.Colors.seperator, height: 1)
    }

}
