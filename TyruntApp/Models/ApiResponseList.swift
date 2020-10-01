//
//  ApiResponse.swift
//  TyruntApp
//
//  Created by Charlton Smith on 9/29/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation
import Alamofire

struct ApiResponseList<Element: Decodable>: Decodable {
    let data: [Element]?
    let links: Link
    let meta: Meta?
    var apiMeta: ApiMeta?
    let message: String
    let code: Int
    
    enum CodingKeys: String, CodingKey {
        case data
        case links
        case meta
        case apiMeta = "api_meta"
        case message
        case code
    }
}
