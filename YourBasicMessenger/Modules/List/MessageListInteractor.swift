//
//  MessageListInteractor.swift
//  YourBasicMessenger
//
//  Created by Kevin Wolkober on 4/27/16.
//  Copyright © 2016 Kevin Wolkober. All rights reserved.
//

import UIKit

class MessageListInteractor: NSObject {

    weak var output: MessageListPresenter!
    var dataSource: TableViewDataSource!

    init(output: MessageListPresenter) {
        self.output = output
    }

    func loadDataSourceWithTableView(tableView: UITableView) {
        let messages = MailMessage.messagesFromPlist(named: "MailDataSource")
        self.dataSource = TableViewDataSource(tableView: tableView, items: messages)
        self.output.updateView()
    }
}
