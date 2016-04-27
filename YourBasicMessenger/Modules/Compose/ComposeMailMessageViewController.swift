//
//  ComposeMailMessageViewController.swift
//  YourBasicMessenger
//
//  Created by Kevin Wolkober on 4/27/16.
//  Copyright © 2016 Kevin Wolkober. All rights reserved.
//

import UIKit

class ComposeMailMessageViewController: UIViewController {

    lazy var cancelBarButtonItem: UIBarButtonItem = {
        return UIBarButtonItem(title: "Cancel", style: .Plain, target: self, action: #selector(self.cancelBarButtonItemTapped(_:)))
    }()
    lazy var sendBarButtonItem: UIBarButtonItem = {
        return UIBarButtonItem(title: "Send", style: .Plain, target: self, action: #selector(self.sendBarButtonItemTapped(_:)))
    }()
    @IBOutlet weak var toTextField: UITextField!
    @IBOutlet weak var fromTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var messageTextView: UITextView!

    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)

        self.title = "New Message"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.leftBarButtonItem = self.cancelBarButtonItem
        self.navigationItem.rightBarButtonItem = self.sendBarButtonItem
    }

    // MARK: Button actions

    @IBAction func cancelBarButtonItemTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func sendBarButtonItemTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

extension ComposeMailMessageViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(textField: UITextField) {
        if self.messageTextView.isFirstResponder() {
            self.messageTextView.resignFirstResponder()
        }
    }
}
