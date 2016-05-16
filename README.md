# Sweetness

[![Version](https://img.shields.io/cocoapods/v/Sweetness.svg?style=flat)](https://cocoapods.org/pods/Sweetness)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/bakkenbaeck/Sweetness)
![platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20OS%20X%20%7C%20watchOS%20%7C%20tvOS%20-lightgrey.svg)
[![License](https://img.shields.io/cocoapods/l/Sweetness.svg?style=flat)](https://cocoapods.org/pods/Sweetness)

# SweetUIKit

## UIAlertController

### Dismissable alert

```swift
let alertController = UIAlertController.dismissableAlert(title: "Not allowed access", message: "Please contact your admin to get access.")
self.presentViewController(alertController, animated: true, completion: nil)
```

### Destructive confirmation alert

```swift
let alertController = UIAlertController.destructiveConfirmationAlert(message: "Are you sure you want to log out?", destructiveActionTitle: "Log out") {
    self.controllerDelegate?.settingsControllerDidPressLogoutButton(self)
}
self.presentViewController(alertController, animated: true, completion: nil)
```

### Error alert

```swift
let alertController = UIAlertController.errorAlert(error)
self.presentViewController(alertController, animated: true, completion: nil)
```

### Progress alert

```swift
let progressAlert = UIAlertController.progressAlert("Creating album...")
self.presentViewController(progressAlert, animated: true, completion: nil)
self.fetcher.createAlbum(title: self.titleTextField.text, photos: self.selectedPhotos) { error in
    progressAlert.dismissViewControllerAnimated(true) {
        if let error = error {
            let alertController = UIAlertController.errorAlert(error)
            self.presentViewController(alertController, animated: true, completion: nil)
        } else {
            // Success
        }
    }
}
```

## UILabel

### Calculate width

```swift
let width = self.usernameLabel.width()
// Do something with new width
```

## UIView

### Shake

```swift
self.fetcher.authenticate(username, password: password) { clientID, clientSecret, accessToken, refreshToken, expiresIn, error in
    if let error = error {
        // Update UI to display error
        self.tableView.shake()
    } else {
      // success
    }
}
```

## UIImage

#### Centered frame

```swift
let image = UIImage(named: "art.png")!
let frame = image.centeredFrame()
// Do something with new frame
```

## UIViewController

#### Application window

```swift
let window = self.applicationWindow()
```

# SweetCoreData

## NSManagedObjectContext

### Drop entity

```swift
let context = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
context.dropEntity("User")
```

### Count entity

```swift
let context = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
let count = context.countEntity("User")
```

### Fetch entity (with generics)

```swift
let context = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
let users: [User] = context.fetchEntity("User")
```

## Installation

**Sweetness** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Sweetness'
```

**Sweetness** is also available through [Carthage](https://github.com/Carthage/Carthage). To install
it, simply add the following line to your Cartfile:

```ruby
github "bakkenbaeck/Sweetness"
```

## License

**Sweetness** is available under the MIT license. See the LICENSE file for more info.

## Author

Bakken & Bæck AS, [@bakkenbaeck](https://twitter.com/bakkenbaeck)
