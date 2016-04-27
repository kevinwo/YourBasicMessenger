//
//  MailMessage.swift
//  YourBasicMessenger
//
//  Created by Kevin Wolkober on 4/26/16.
//  Copyright © 2016 Kevin Wolkober. All rights reserved.
//

import Foundation

class MailMessage {
    var sender: String!
    var time: String!
    var subject: String!
    var preview: String!

    private static let kSenderKey = "sender"
    private static let kTimeKey = "time"
    private static let kSubjectKey = "subject"
    private static let kPreviewKey = "preview"

    static func messagesFromPlist(named filename: String) -> [MailMessage] {
        let path = NSBundle.mainBundle().pathForResource(filename, ofType:"plist")!
        let messageDicts = NSArray(contentsOfFile: path)!
        var messages = [MailMessage]()

        for dict in messageDicts as! [[String: String]] {
            let message = MailMessage()
            message.sender = dict[kSenderKey]
            message.time = dict[kTimeKey]
            message.subject = dict[kSubjectKey]
            message.preview = dict[kPreviewKey]
            messages.append(message)
        }

        return messages
    }
}
