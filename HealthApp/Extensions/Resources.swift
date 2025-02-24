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
        
        static var seperator = UIColor(hexString: "#EBECEF")
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
}
