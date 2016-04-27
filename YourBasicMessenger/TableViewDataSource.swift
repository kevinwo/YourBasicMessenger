//
//  TableViewDataSource.swift
//  YourBasicMessenger
//
//  Created by Kevin Wolkober on 4/27/16.
//  Copyright © 2016 Kevin Wolkober. All rights reserved.
//

import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource {

    weak var tableView: UITableView!
    var items: [AnyObject]
    var cellReuseIdentifier: String?

    init(tableView: UITableView, items: [AnyObject], cellReuseIdentifier: String? = nil) {
        self.tableView = tableView
        self.items = items
        self.cellReuseIdentifier = cellReuseIdentifier
        super.init()
        self.tableView.dataSource = self
    }

    // MARK: UITableViewDataSource

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let object = self.items[indexPath.row]
        let reuseIdentifier = self.cellReuseIdentifier ?? Mirror.classNameForObject(object)
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath) as! ConfigurableCell
        cell.configure(object)

        return cell as! UITableViewCell
    }
}
