//
//  ViewController.swift
//  GList
//
//  Created by Patrick Bellot on 11/23/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
  @IBOutlet weak var tableview: UITableView!
    
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableview.delegate = self
    tableview.dataSource = self
  }
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
    
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TextInputCell") as! TextInputTableViewCell
        
    cell.configure(text: "", placeholder: "Enter Items")
    return cell
  }
} // end of class
