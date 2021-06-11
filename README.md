# UIKitMeetsSwiftUI

## Present ViewController in SwiftUI with UIKit as base

```swift
let viewController = UIHostingController(rootView: SwiftUIView())
viewController.modalPresentationStyle = .fullScreen
self.present(viewController, animated: true, completion: nil)
```

## Add SwiftUI View in UIkit View

```swift
let hostingController = UIHostingController(rootView: SwiftUIView())

// Add as a child of the current view controller.
self.addChild(hostingController)

// Add the SwiftUI view to the view controller view hierarchy.
self.view.addSubview(hostingController.view)

// Setup the contraints to update the SwiftUI view boundaries.
hostingController.view.translatesAutoresizingMaskIntoConstraints = false
NSLayoutConstraint.activate([
  // Add constraints for SwiftUIView
])

// Notify the hosting controller that it has been moved to the current view controller.
hostingController.didMove(toParent: self)
```
