//
//  Copyright © 2021 Dominic Elayda.
//  Licensed under The MIT License.
//

import UIKit

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13, *)
extension UIViewController {
    struct Preview<T: UIViewController>: UIViewControllerRepresentable {
        var viewController: T
        func makeUIViewController(context: Context) -> T {
            return viewController
        }
        func updateUIViewController(_ viewController: T, context: Context) { }
    }
}
#endif
