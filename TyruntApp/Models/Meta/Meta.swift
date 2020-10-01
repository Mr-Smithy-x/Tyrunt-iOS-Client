//
//  Meta.swift
//  TyruntApp
//
//  Created by Charlton Smith on 9/29/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

struct Meta: Decodable {
    let currentPage: Int?
    let from: Int
    let lastPage: Int?
    let path: String
    let perPage: Int?
    let to: Int
    let total: Int
    
    enum CodingKeys: String, CodingKey {
        case currentPage = "current_page"
        case from
        case lastPage = "last_page"
        case path
        case perPage = "per_page"
        case to
        case total
    }
}
