//
//  ApiResponse.swift
//  TyruntApp
//
//  Created by Charlton Smith on 9/29/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

struct ApiResponse<Element: Decodable>: Decodable {
    let data: Element?
    let message: String
    let status: Int
    
    enum CodingKeys: String, CodingKey {
        case data
        case message
        case status
    }
}
