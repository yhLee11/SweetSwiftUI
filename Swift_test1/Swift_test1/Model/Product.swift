//
//  Product.swift
//  Swift_test1
//
//  Created by 이연희 on 1/1/21.
//  Copyright © 2021 이연희. All rights reserved.
//

import SwiftUI

extension Product: Decodable{}
extension Product: Identifiable{}

struct Product {
    let id: UUID = UUID()
    let name: String
    let imageName: String
    let price: Int
    let description: String
    let isFavorite: Bool = false
}

let productSamples = [
    Product(name: "fig", imageName: "fig", price: 3100, description: "fig JMT"),
    Product(name: "avocado", imageName: "avocado", price: 2900, description: "avocado JMT"),
    Product(name: "banana", imageName: "banana", price: 2400, description: "banana JMT"),
    Product(name: "blueberry", imageName: "blueberry", price: 2300, description: "bluebberry JMT"),
    Product(name: "watermelon", imageName: "watermelon", price: 3500, description: "watermelon JMT")
]
