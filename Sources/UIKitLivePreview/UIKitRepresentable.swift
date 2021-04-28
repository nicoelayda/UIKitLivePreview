//
//  Copyright © 2021 Dominic Elayda.
//  Licensed under The MIT License.
//

import UIKit

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13, *)
public protocol UIKitRepresentable {
    associatedtype PreviewType
    func preview() -> PreviewType
}

@available(iOS 13, *)
public extension UIKitRepresentable where Self: UIView {
    func preview() -> some View {
        return Preview(view: self)
    }
}

@available(iOS 13, *)
public extension UIKitRepresentable where Self: UIViewController {
    func preview() -> some View {
        return Preview(viewController: self)
    }
}

extension UIView: UIKitRepresentable { }
extension UIViewController: UIKitRepresentable { }
#endif
