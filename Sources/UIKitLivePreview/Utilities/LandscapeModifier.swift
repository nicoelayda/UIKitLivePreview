//
//  Copyright © 2021 Dominic Elayda.
//  Licensed under The MIT License.
//

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13, *)
public struct LandscapeModifier: ViewModifier {
    
    // Reverse the screen width and height so it is displayed in landscape.
    let height = UIScreen.main.bounds.width
    let width = UIScreen.main.bounds.height
    
    public func body(content: Content) -> some View {
        content
            .previewLayout(
                .fixed(width: width, height: height)
            )
    }
    
}

@available(iOS 13, *)
extension View {
    public func landscape() -> some View {
        modifier(LandscapeModifier())
    }
}
#endif
