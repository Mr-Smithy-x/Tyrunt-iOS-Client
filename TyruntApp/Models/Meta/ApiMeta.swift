//
//  ApiMeta.swift
//  TyruntApp
//
//  Created by Charlton Smith on 9/29/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

struct ApiMeta: Decodable {
    let serverTime: UInt32?
    let serverTimezone: String?
    let apiVersion: Int?
    let executionTime: String?
    enum CodingKeys: String, CodingKey {
          case serverTime = "server_time"
          case serverTimezone = "server_timezone"
          case apiVersion = "api_version"
          case executionTime = "execution_time"
    }
}
