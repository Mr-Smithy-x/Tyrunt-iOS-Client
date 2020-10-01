//
//  TyruntService.swift
//  TyruntApp
//
//  Created by Charlton Smith on 9/30/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

typealias ApiResponseClosure<T> = (T?) -> Void
class TyruntService: ApiService {
    
    
    func search(_ query: String,
                page: Int = 1,
                dict: [String: Any]?,
                onSuccess success: @escaping ApiResponseClosure<ApiResponseList<Torrent>>){
        var dictionary = [String: Any]()
        if(query.count > 0){
            dictionary["query_term"] = query
        }
        dictionary["page"] = page
        if(dict != nil){
            dictionary.merge(dict!, uniquingKeysWith: {(old, new) in new})
        }
        super.get(path: "/api/v1/torrents", params: dictionary, headers: nil) { (data) in
            let decodeJson = JSONDecoder()
            decodeJson.keyDecodingStrategy = JSONDecoder.KeyDecodingStrategy.convertFromSnakeCase
            let torrent = try! decodeJson.decode(ApiResponseList<Torrent>.self, from: data)
            
            success(torrent)
        }
    }
    
    
}
