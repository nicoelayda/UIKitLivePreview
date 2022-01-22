//
//  Copyright © 2021 Dominic Elayda.
//  Licensed under The MIT License.
//

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13, *)
public struct LandscapeModifier: ViewModifier {
    
    @State private var _orientation: Any? = nil
    @available(iOS 15, *)
    private var orientation: LandscapeModifierOrientation {
        get {
            _orientation.map {
                $0 as! LandscapeModifierOrientation
            } ?? .right
        }
        set {
            _orientation = newValue
        }
    }
    
    public init() { }
    
    @available(iOS 15, *)
    public init(orientation: LandscapeModifierOrientation) {
        self.orientation = orientation
    }
    
    public func body(content: Content) -> some View {
        if #available(iOS 15, *) {
            content.previewInterfaceOrientation(orientation.interfaceOrientation)
        } else {
            // Reverse the screen width and height so it is displayed in landscape.
            content
                .previewLayout(
                    .fixed(
                        width: UIScreen.main.bounds.height,
                        height: UIScreen.main.bounds.width
                    )
                )
        }
       
    }
    
}

@available(iOS 15, *)
public enum LandscapeModifierOrientation {
    case left
    case right
    
    fileprivate var interfaceOrientation: InterfaceOrientation {
        switch self {
        case .left: return .landscapeLeft
        case .right: return .landscapeRight
        }
    }
}

@available(iOS 13, *)
extension View {
    public func landscape() -> some View {
        modifier(LandscapeModifier())
    }
    
    @available(iOS 15, *)
    public func landscape(orientation: LandscapeModifierOrientation) -> some View {
        modifier(LandscapeModifier(orientation: orientation))
    }
}
#endif
