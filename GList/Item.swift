//
//  Item.swift
//  GList
//
//  Created by Patrick Bellot on 12/6/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import Foundation
import RealmSwift

class item: Object {
  dynamic var itemID = NSUUID().uuidString
  dynamic var name = ""
  
  override class func primaryKey() -> String? {
    return "itemId"
  }
}
