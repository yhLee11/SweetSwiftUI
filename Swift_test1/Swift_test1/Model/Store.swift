//
//  Store.swift
//  Swift_test1
//
//  Created by 이연희 on 1/3/21.
//  Copyright © 2021 이연희. All rights reserved.
//

import Foundation

final class Store {
  var products: [Product]
  
  // MARK: Initialization
  
  init(filename: String = "ProductData.json") {
    self.products = Bundle.main.decode(filename: filename, as: [Product].self)
  }
}
