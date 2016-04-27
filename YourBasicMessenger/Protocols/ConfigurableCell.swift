//
//  ConfigurableCell.swift
//  YourBasicMessenger
//
//  Created by Kevin Wolkober on 4/27/16.
//  Copyright © 2016 Kevin Wolkober. All rights reserved.
//

import Foundation

protocol ConfigurableCell: NSObjectProtocol {
    func configure(object: AnyObject)
}
