//
//  ViewController.swift
//  GList
//
//  Created by Patrick Bellot on 11/23/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  var items = [String]()
  
  @IBOutlet weak var priceLabel: UILabel!
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var tableView: UITableView!
 
    
    override func viewDidLoad() {
      super.viewDidLoad()
    }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
    
    cell?.textLabel?.text = items[indexPath.row]
    cell?.textLabel?.textColor = UIColor.green
    return cell!
  }
  
    @IBAction func addButton(_ sender: Any) {
      
      let newItem = textField.text
      items.append(newItem!)
      textField.resignFirstResponder()
      textField.text = ""
      textField.placeholder = "Add Item"
      tableView.reloadData()
    }
}
