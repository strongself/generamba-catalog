import UIKit

protocol TransitionHandler: class {
    func push(_ controller: UIViewController, animated: Bool)
    func popup(_ controller: UIViewController, animated: Bool, completion: (() -> Void)?)
    func hidePopup(animated: Bool, completion: (() -> Void)?)
    func pop(to controller: UIViewController, animated: Bool)
    func pop(animated: Bool)
}

extension TransitionHandler where Self: UIViewController {
    func push(_ controller: UIViewController, animated: Bool = true) {
        navigationController?.pushViewController(controller, animated: animated)
    }

    func popup(_ controller: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
        let navController = UINavigationController(rootViewController: controller)
        present(navController, animated: animated, completion: completion)
    }

    func hidePopup(animated: Bool = true, completion: (() -> Void)? = nil) {
        dismiss(animated: animated, completion: completion)
    }

    func pop(to controller: UIViewController, animated: Bool = true) {
        navigationController?.popToViewController(controller, animated: animated)
    }

    func pop(animated: Bool = true) {
        navigationController?.popViewController(animated: animated)
    }
}
