//
//  TextInputTableViewCell.swift
//  GList
//
//  Created by Patrick Bellot on 11/23/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import UIKit

class TextInputTableViewCell: UITableViewCell {
    
  @IBOutlet weak var textField: UITextField!

  func configure(text: String?, placeholder: String) {
    textField.text = text
    textField.placeholder = placeholder
    
    textField.accessibilityValue = text
    textField.accessibilityLabel = placeholder
  }
}
