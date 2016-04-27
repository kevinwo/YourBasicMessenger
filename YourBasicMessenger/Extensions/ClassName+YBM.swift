//
//  ClassName+YBM.swift
//  YourBasicMessenger
//
//  Created by Kevin Wolkober on 4/27/16.
//  Copyright © 2016 Kevin Wolkober. All rights reserved.
//

import Foundation

extension NSObject {
    static var className: String {
        let components = String(self).characters.split{$0 == "."}.map(String.init)

        return components.last!
    }
}

extension Mirror {
    static func classNameForObject(object: AnyObject) -> String {
        let objectMirror = Mirror(reflecting: object)

        return String(objectMirror.subjectType)
    }
}