//
//  TabBarController.swift
//  HealthApp
//
//  Created by Saadet Şimşek on 24/02/2025.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
     
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .systemBackground
        
        tabBar.layer.borderColor = Resources.Colors.seperator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewViewController()
        let sessionController = SessionViewController()
        let progressController = ProgressViewController()
        let settingsController = SettingsViewController()
        
        let overviewNaVVC = NavigationBarViewController(rootViewController: overviewController)
        let sessionNaVVC = NavigationBarViewController(rootViewController: sessionController)
        let progressNaVVC = NavigationBarViewController(rootViewController: progressController)
        let settingsNaVVC = NavigationBarViewController(rootViewController: settingsController)
        
        overviewController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                     image: Resources.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        sessionController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                    image: Resources.Images.TabBar.session,
                                                    tag: Tabs.session.rawValue)
        progressController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        settingsController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        setViewControllers([overviewNaVVC, sessionNaVVC, progressNaVVC, settingsNaVVC], animated: false)
    }
}
