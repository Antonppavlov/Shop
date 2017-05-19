//
//  BaseViewController.swift
//  Shop
//
//  Created by Георгий Малюков on 29.09.15.
//  Copyright © 2015 Georgiy Malyukov. All rights reserved.
//

import UIKit

class BaseViewController : UIViewController {
    
    init() {
        let className = NSStringFromClass(type(of: self))
        let nibName = className.components(separatedBy: ".").last!
        
        super.init(nibName: nibName, bundle: Bundle.main)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
