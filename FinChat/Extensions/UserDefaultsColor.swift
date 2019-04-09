//
//  UserDefaultsColor.swift
//  FinChat
//
//  Created by Roman Nordshtrem on 06/03/2019.
//  Copyright © 2019 Роман Нордштрем. All rights reserved.
//

import Foundation
import UIKit

extension UserDefaults {
    func colorForKey(key: String) -> UIColor? {
        var color: UIColor?
        if let colorData = data(forKey: key) {
            color = NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor
        }
        return color
    }
    func setColor(color: UIColor?, forKey key: String) {
        var colorData: NSData?
        if let color = color {
            colorData = NSKeyedArchiver.archivedData(withRootObject: color) as NSData?
        }
        set(colorData, forKey: key)
    }

    /*
    let defaults = UserDefaults.standard
    defaults.setColor(color: UIColor.red, forKey: "myColor") // set
    let myColor = defaults.colorForKey(key: "myColor") // get
    */

}
