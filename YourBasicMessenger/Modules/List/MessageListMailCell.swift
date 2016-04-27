//
//  MessageListMailCell.swift
//  YourBasicMessenger
//
//  Created by Kevin Wolkober on 4/26/16.
//  Copyright © 2016 Kevin Wolkober. All rights reserved.
//

import UIKit

class MessageListMailCell: UITableViewCell, ConfigurableCell {

    @IBOutlet weak var senderLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var messagePreviewLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(object: AnyObject) {
        let message = object as! MailMessage

        self.senderLabel.text = message.sender
        self.timeLabel.text = message.time
        self.subjectLabel.text = message.subject
        self.messagePreviewLabel.text = message.preview
    }
}
