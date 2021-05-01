# UIKitLivePreview

Enables SwiftUI live previews for UIKit views and view controllers.

![uikitlivepreview720](https://user-images.githubusercontent.com/4868132/116438635-377b3100-a881-11eb-9a6c-34698b524848.gif)

## Requirements

- macOS Catalina or later
- Xcode 12 or later
- iOS Deployment Target 12.0 or later

## Installation

### Swift Package Manager (Recommended)

In Xcode, select **File > Swift Packages > Add Package Dependency...**

Add `https://github.com/nicoelayda/UIKitLivePreview.git` as the package repository URL.

**or**

If you have an existing `Package.swift` file, add `UIKitLivePreview` package to your target's dependencies.

```swift
dependencies: [
    .package(url: "https://github.com/nicoelayda/UIKitLivePreview.git", .upToNextMajor(from: "1.0.0"))
]
```

### Carthage

1. Add `UIKitLivePreview` to your `Cartfile`.

    ```
    github "nicoelayda/UIKitLivePreview" ~> 1.0.0
    ```

2. Run `carthage update --use-xcframeworks`
3. Drag `UIKitLivePreview.xcframework` in `Carthage/Build` into your application target's **Frameworks, Libraries and Embedded Content**.

### Cocoapods

1. Add `UIKitLivePreview` to your `Podfile`.

    ```ruby
    pod 'UIKitLivePreview', '~> 1.0.0'
    ```

2. Run `pod install`

### Manual Install

Copy the contents of [`Sources/UIKitLivePreview`](https://github.com/nicoelayda/UIKitLivePreview/tree/main/Sources/UIKitLivePreview) to your project.

## Usage
1. Import `UIKitLivePreview` in your view or view controller.
2. In the same Swift file, define a new struct conforming to `PreviewProvider`.
3. Inside the `previews` property:
    - Initialise your UIKit view or view controller, passing any dependencies it needs.
    - Call `preview()` on it to create a wrapped SwiftUI `View` instance.
    - Return the preview instance.
    
#### Example
    
```swift

final class MyViewController: UIViewController { /* ... */ }

#if DEBUG && canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
struct MyViewController_Preview: PreviewProvider {
    static var previews: some View {
        MyViewController()
            .preview()
    }
}
#endif
```

**NOTE:** If your project is targeting iOS 12, it is recommended to wrap the `PreviewProvider` struct in a `#if canImport(SwiftUI)` directive and add a `@available(iOS 13.0, *)` attribute to it.

Check out [**UIKitLivePreview-Examples**](https://github.com/nicoelayda/UIKitLivePreview-Examples) for a sample project.

## License

MIT. See [LICENSE](https://github.com/nicoelayda/UIKitLivePreview/blob/main/LICENSE).

