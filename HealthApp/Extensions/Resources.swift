//
//  Resources.swift
//  HealthApp
//
//  Created by Saadet Şimşek on 24/02/2025.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        static var titleGrey = UIColor(hexString: "#545C77")
        static var seperator = UIColor(hexString: "#EBECEF")
        static var background = UIColor(hexString: "#F8F9F9")
    }
    
    enum Strings{
        enum TabBar{
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
    }
    
    enum Images{
        enum TabBar{
            static var overview = UIImage(systemName: "house")
            static var session = UIImage(systemName: "alarm")
            static var progress = UIImage(systemName: "chart.bar")
            static var settings = UIImage(systemName: "gearshape")
            
        }
    }
    
    enum Fonts{
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
