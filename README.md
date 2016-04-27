# YourBasicMessenger


Sadly, the Mail app nor Messages app is available in the iOS simulator. I created this app to stand up fake state for messaging while using/testing with an app extension. In my case, I needed to automate my App Store screenshot creation on the simulator

The Mail portion is currently under development, and I'll add the Messages portion next


## Setup

1. Clone the repository
2. Install CocoaPods
3. Run 'pod install'
4. Open YourBasicMessenger.xcworkspace
5. Edit any constants as you see fit in Constants.swift
6. Add/edit/remove data fixtures in MailDataSource.plist

## Automated Screenshot Capture

[Snapshot](https://github.com/fastlane/fastlane/tree/master/snapshot "Snapshot (from the Fastlane suite") (from the Fastlane suite)