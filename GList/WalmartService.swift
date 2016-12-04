//
//  WalmartService.swift
//  GList
//
//  Created by Patrick Bellot on 12/4/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import Foundation
import RxSwift

enum Result<T>{
  case success(T)
  case failure(Error)
}

struct ParamName {
  
  static let Query = "&query="
  static let ApiKey = "qm9ubh38dh7htpeev28ptng7"
}

struct Item {
  var name = ""
}

struct WalmartAPI {
  
  static let BaseUrl = "http://api.walmartlabs.com/v1/search?apiKey=" + ParamName.ApiKey + ParamName.Query 
  
  // what the url looks like when searching for sugar: http://api.walmartlabs.com/v1/search?query=sugar&format=json&apiKey=qm9ubh38dh7htpeev28ptng7
}
