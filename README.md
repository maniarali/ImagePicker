# ImagePicker

[![CI Status](http://img.shields.io/travis/MA Maniar/ImagePicker.svg?style=flat)](https://travis-ci.org/MA Maniar/ImagePicker)
[![Version](https://img.shields.io/cocoapods/v/ImagePicker.svg?style=flat)](http://cocoapods.org/pods/ImagePicker)
[![License](https://img.shields.io/cocoapods/l/ImagePicker.svg?style=flat)](http://cocoapods.org/pods/ImagePicker)
[![Platform](https://img.shields.io/cocoapods/p/ImagePicker.svg?style=flat)](http://cocoapods.org/pods/ImagePicker)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## USAGE

    Just add following code to add image.
        ImageManager.shared.openImagePicker(completion: { (image) in
        self.image = image
    })

    It's simple? yeah.

    Don't forget to add :

    <key>NSCameraUsageDescription</key>
    <string>"Your message"</string>
    <key>NSPhotoLibraryUsageDescription</key>
    <string>"Your message"</string>

## Installation

ImagePicker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ImagePicker'
```

## Author

MA Maniar, maniarali@gmail.com

## License

ImagePicker is available under the MIT license. See the LICENSE file for more info.
