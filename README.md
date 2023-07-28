# DKCameraButtonView
> A iOS Swift library for Camera Button.

[![Swift Version][swift-image]][swift-url]
[![License][license-image]][license-url]
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/DKCameraButtonView.svg?style=flat)](https://cocoapods.org/pods/DKCameraButtonView) 
[![Platform](https://img.shields.io/badge/platform-ios-yellow.svg)](http://cocoapods.org/pods/DKCameraButtonView)

DKCameraButtonView is a swift library UI support camera button for iOS projects.

## Requirements

- iOS 14.0+
- Xcode 12.0+

## Installation

#### CocoaPods
You can use [CocoaPods](http://cocoapods.org/) to install `DKCameraButtonView` by adding it to your `Podfile`:

```ruby
platform :ios, '14.0'
use_frameworks!
pod 'DKCameraButtonView'
```

To get the full benefits import `DKCameraButtonView` wherever you import UIKit

``` swift
import UIKit
import DKCameraButtonView
```
#### Manually
1. Download and drop ```DKCameraButtonView.swift``` in your project.  
2. Congratulations!  

## Usage example

#### By using code
```swift
import DKCameraButtonView

...

let view = CameraButtonView(frame: CGRect(x: 10, y: 20, width: 80, height: 80))
view.delegate = self
self.view.addSubview(view)
```

```swift
extension YourClass: DKCameraButtonViewDelegate {
    
    func cameraButtonHandleAction(_ action: DKCameraButtonView.ActionType) {
        switch action {
        case .takePhoto:
            print("Take photo")
        case .startRecord:
            print("Recording")
        case .stopRecord:
            print("Stop recording")
        case .cancelRecord:
            print("Cancel recording")
        }
    }
}
```

## Contribute

We would love you for the contribution to **DKCameraButtonView**, check the ``LICENSE`` file for more info.

## Meta

DA.Kiet – [@DAKiet65 ](https://twitter.com/DAKiet65) – doananhkiet65@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/DAKiet/DKCameraButtonView](https://github.com/DAKiet)

[swift-image]:https://img.shields.io/badge/swift-5.0-orange.svg
[swift-url]: https://swift.org/
[license-url]: https://github.com/DAKiet/DKCameraButtonView/blob/main/LICENSE
[license-image]: https://img.shields.io/github/license/DAKiet/DKCameraButtonView.svg
