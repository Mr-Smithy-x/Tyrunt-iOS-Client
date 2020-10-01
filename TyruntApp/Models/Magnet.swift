//
//  Magnet.swift
//  TyruntApp
//
//  Created by Charlton Smith on 9/24/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

struct Magnet: Decodable {
    let url: String
    let hash: String
    let quality: String
    let type: String
    let seeds: Int
    let peers: Int
    let size: String
    var sizeBytes: Int?
    var dateUploaded: String?
    var dateUploadedUnix: Int?
    let magnet: String
    
    enum CodingKeys: String, CodingKey {
        case url
        case hash
        case quality
        case type
        case seeds
        case peers
        case size
        case sizeBytes = "size_bytes"
        case dateUploaded = "date_uploaded"
        case dateUploadedUnix = "date_uploaded_unix"
        case magnet
    }
}
