//
//  BaseViewController.swift
//  HealthApp
//
//  Created by Saadet Şimşek on 24/02/2025.
//

import UIKit

enum NavBarPositions{
    case left
    case right
}

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }

}

@objc extension BaseViewController {
    func addViews(){
        
    }
    func layouutViews() {
        
    }
    func configure(){
        view.backgroundColor = Resources.Colors.background
    }
    
    func navButtonRightButtonHandler() {
        print("right button tap")
    }
    
    func navButtonLeftButtonHandler(){
        print(" left button tap")
    }
}

extension BaseViewController {
    func addNavBarButton(at position: NavBarPositions, with title: String){
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .normal)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navButtonLeftButtonHandler),
                             for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self,
                             action: #selector(navButtonRightButtonHandler),
                             for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView:  button)
        }
    }
}
