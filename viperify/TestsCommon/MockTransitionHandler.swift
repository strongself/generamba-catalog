@testable import {{ module_info.project_name | split: "-" | join: "_" }}
import UIKit

class MockTransitionHandler: TransitionHandler {
    var didPush = false
    func push(_ controller: UIViewController, animated: Bool) {
        didPush = true
    }

    var didPopup = false
    func popup(_ controller: UIViewController, animated: Bool, completion: (() -> Void)?) {
        didPopup = true
        completion?()
    }

    var didHidePopup = false
    func hidePopup(animated: Bool, completion: (() -> Void)?) {
        didHidePopup = true
        completion?()
    }

    var didPop = false
    func pop(animated: Bool) {
        didPop = true
    }

    var didPopTo = false
    func pop(to controller: UIViewController, animated: Bool) {
        didPopTo = true
    }
}
