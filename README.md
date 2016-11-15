# ForceTouchVibrationCLI
A very bad CLI interface to make the MacBook's Force Touch Trackpad vibrate

It probably shouldn't be used for anything serious, as explained very clearly by Apple [here](https://developer.apple.com/library/content/samplecode/ForceTouchCatalog/Listings/ForceTouchCatalog_MasterViewController_swift.html#//apple_ref/doc/uid/TP40016148-ForceTouchCatalog_MasterViewController_swift-DontLinkElementID_11):
```
/*
   Use the `NSHapticFeedbackManager` class to perform alignment haptic
   feedback on the Force Touch trackpad.
            
   Note: You can call this even if this Macintosh doesn't have a Force
   Touch Trackpad Haptic feedback should be used sparingly. Here we are
   performing it when the user aligns the photo to 0 degrees. A more
   real world example would be when the user aligns the photo to when 
   the horizon is level.
   
   Ideally, the velocity of slider value changes would be considered such
   that haptic feedback is only performed when the user is trying to find
   the alignment point (aka moving slowly). This is left as an exercise
   for the reader.
*/
```

## Usage
```
Vibrate for 0.5 seconds:   vibrate -t 0.5
Vibrate for 30 seconds:    vibrate --time 30
Vibrate forever:           vibrate
Show help:                 vibrate --help
```
