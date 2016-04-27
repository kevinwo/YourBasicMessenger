//
//  MessageListPresenter.swift
//  YourBasicMessenger
//
//  Created by Kevin Wolkober on 4/27/16.
//  Copyright © 2016 Kevin Wolkober. All rights reserved.
//

import UIKit

class MessageListPresenter: NSObject {

    weak var view: MessageListViewController!
    lazy var interactor: MessageListInteractor = {
        return MessageListInteractor(output: self)
    }()

    init(view: MessageListViewController) {
        self.view = view
    }

    func viewDidLoad() {
        self.interactor.loadDataSourceWithTableView(view.tableView)
    }

    func composeMailMessage() {
        let controller = self.view.storyboard!.instantiateViewControllerWithIdentifier(ComposeMailMessageViewController.className)
        let navigationController = UINavigationController(rootViewController: controller)

        self.view.presentViewController(navigationController, animated: true, completion: nil)
    }

    // MARK: Interactor output

    func updateView() {
        self.view.tableView.reloadData()
    }
}
