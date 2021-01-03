//
//  BundleExtension.swift
//  Swift_test1
//
//  Created by 이연희 on 1/3/21.
//  Copyright © 2021 이연희. All rights reserved.
//

import SwiftUI

extension Bundle{
    func decode<T: Decodable>(filename: String, as type: T.Type) -> T{
        guard let url = self.url(forResource: filename, withExtension: nil) else{
                fatalError("not exist \(filename) in bundle")
        }
        guard let data = try? Data(contentsOf: url)else{
            fatalError("cannot get data from \(url)")
        }
        guard let decodedData = try? JSONDecoder().decode(T.self,from:data)
            else{
                fatalError("data decoding failed")
        }
        return decodedData
    
    }
}
