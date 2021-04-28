//
//  Copyright © 2021 Dominic Elayda.
//  Licensed under The MIT License.
//

import UIKit

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13, *)
extension UIView {
    struct Preview<T: UIView>: UIViewRepresentable {
        var view: T
        func makeUIView(context: Context) -> T {
            return view
        }
        func updateUIView(_ view: T, context: Context) { }
    }
}
#endif

