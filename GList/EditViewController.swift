//
//  EditViewController.swift
//  GList
//
//  Created by Patrick Bellot on 11/23/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RealmSwift

class EditViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  /* This is the VC where we edit our shopping list. Either from a newly created list or from a previously saved list*/
  
  // MARK: Outlets
  
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var tableView: UITableView!
  
  // MARK: Properties
  
  let disposeBag = DisposeBag()
  var items = [String]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "GList"
    dateLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .full, timeStyle: .none)
  }
  
  // MARK: TableView Datasource
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
    
    cell?.textLabel?.text = items[indexPath.row]
    cell?.textLabel?.textColor = UIColor.gray
    return cell!
  }
  
  // MARK: TableView Delegate
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let selectedRow = tableView.cellForRow(at: indexPath)
    
    if selectedRow?.accessoryType == UITableViewCellAccessoryType.none {
      selectedRow?.accessoryType = UITableViewCellAccessoryType.checkmark
      selectedRow?.tintColor = UIColor.green
    } else {
      selectedRow?.accessoryType = UITableViewCellAccessoryType.none
    }
  }
  
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    let deletedRow = tableView.cellForRow(at: indexPath)
    
    if editingStyle == .delete {
      items.remove(at: indexPath.row)
      tableView.deleteRows(at: [indexPath], with: .automatic)
      deletedRow?.accessoryType = UITableViewCellAccessoryType.none
    }
  }
  
  // MARK: Actions
  
    @IBAction func addButton(_ sender: Any) {
      let newItem = textField.text
      items.append(newItem!)
      textField.resignFirstResponder()
      textField.text = ""
      tableView.reloadData()
    }
}// end of class
