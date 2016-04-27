//
//  Constants.swift
//  YourBasicMessenger
//
//  Created by Kevin Wolkober on 4/27/16.
//  Copyright © 2016 Kevin Wolkober. All rights reserved.
//

import Foundation

enum MessageType {
    case SMS
    case Mail

    func composeMessageMethodSignature() -> String {
        switch self {
        case .SMS:
            return "composeSMSMessageBarButtonButtonTapped:"
        case .Mail:
            return "composeMailMessageBarButtonItemTapped:"
        }
    }
}

let kYBMMessageType = MessageType.Mail
let kYBMNavigationBarTitle = "All Inboxes"
let kYBMNumberOfUnreadItems = 24