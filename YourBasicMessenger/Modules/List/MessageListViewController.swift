//
//  MessageListViewController.swift
//  YourBasicMessenger
//
//  Created by Kevin Wolkober on 4/26/16.
//  Copyright © 2016 Kevin Wolkober. All rights reserved.
//

import UIKit

class MessageListViewController: UITableViewController {

    lazy var presenter: MessageListPresenter = {
        return MessageListPresenter(view: self)
    }()
    var messages: [MailMessage]!

    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)

        self.title = kYBMNavigationBarTitle
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.splitViewController?.preferredDisplayMode = .AllVisible
        self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.setUpToolbar()
        self.presenter.viewDidLoad()
    }

    // MARK: Button actions

    func composeMailMessageBarButtonItemTapped(sender: AnyObject) {
        self.presenter.composeMailMessage()
    }

    // MARK: Private interface

    private func setUpToolbar() {
        if kYBMMessageType == .Mail {
            var toolbarItems = [UIBarButtonItem]()
            let composeBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Compose, target: self, action: Selector(kYBMMessageType.composeMessageMethodSignature()))
            let unreadBarButtonItem = UIBarButtonItem(title: "\(kYBMNumberOfUnreadItems) unread", style: .Plain, target: nil, action: nil)
            unreadBarButtonItem.setTitleTextAttributes([NSFontAttributeName: UIFont.systemFontOfSize(12.0), NSForegroundColorAttributeName: UIColor.lightGrayColor()], forState: .Normal)
            let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: nil, action: nil)

            toolbarItems.append(flexibleSpace)
            toolbarItems.append(unreadBarButtonItem)
            toolbarItems.append(flexibleSpace)
            toolbarItems.append(composeBarButtonItem)
            self.toolbarItems = toolbarItems

            self.navigationController!.setToolbarHidden(false, animated: false)
        }
    }
}
