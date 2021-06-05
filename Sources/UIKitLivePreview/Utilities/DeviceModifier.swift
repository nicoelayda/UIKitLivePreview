//
//  Copyright © 2021 Dominic Elayda.
//  Licensed under The MIT License.
//

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13, *)
public struct DeviceModifier: ViewModifier {
    
    let device: UIKitLivePreviewDevice
    
    init(_ device: UIKitLivePreviewDevice) {
        self.device = device
    }
    
    public func body(content: Content) -> some View {
        content
            .previewDevice(PreviewDevice(rawValue: device.rawValue))
            .previewDisplayName(device.rawValue)
    }
    
}

@available(iOS 13, *)
extension View {
    public func device(_ device: UIKitLivePreviewDevice) -> some View {
        modifier(DeviceModifier(device))
    }
}
#endif
