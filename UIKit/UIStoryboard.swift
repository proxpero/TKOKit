import UIKit

extension UIStoryboard {

    /// Returns the storyboard named "Main" in the main bundle.
    public static var main: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }

    /// Instantiates a `UIViewController` of type `A` in a storyboard file
    /// whose name is identical to `A.self` and which is in a the same
    /// bundle as the file defining `A`.
    public static func instantiate<A: UIViewController>(_ type: A.Type) -> A {
        let name = String(describing: A.self)
        let bundle = Bundle(for: A.self)
        let storyboard = UIStoryboard(name: name, bundle: bundle)
        let vc = storyboard.instantiate(type)
        return vc
    }

    /// Instantiates a `UIViewController` that has a storyboard identifier
    /// that is identical to the name of the class.
    /// **Crashes if no storyboard can be found.**
    ///
    /// - Parameter type: A type that inherits from `UIViewController`.
    /// - Returns: An instantiated view controller of type `A`.
    public func instantiate<A: UIViewController>(_ type: A.Type) -> A {
        guard let vc = self.instantiateViewController(withIdentifier: String(describing: type.self)) as? A else {
            fatalError("Could not instantiate view controller \(A.self)") }
        return vc
    }

    /// Instantiates a `UINavigationController` that has a storyboard identifier
    /// that is identical to the name of the class.
    /// **Crashes if no storyboard can be found.**
    ///
    /// - Parameter type: A type that inherits from `UINavigationController`.
    /// - Returns: An instantiated navigation controller of type `A`.
    public func instantiateNavigationController(withIdentifier identifier: String) -> UINavigationController {
        guard let nav = instantiateViewController(withIdentifier: identifier) as? UINavigationController else { fatalError("Could not create a navigation controller with identifier \(identifier).") }
        return nav
    }

}
