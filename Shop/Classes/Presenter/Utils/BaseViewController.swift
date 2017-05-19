
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
