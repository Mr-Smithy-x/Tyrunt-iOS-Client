//
//  NetworkService.swift
//  TyruntApp
//
//  Created by Charlton Smith on 9/30/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation
import Alamofire


class ApiService {
    
    
    public let BASE_URL = "http://tyrunt-laravel.ru";
    
    public func get(path: String,
                    params parameters: [String: Any]?,
                    headers: [String: String]?,
                    onSuccess success: @escaping (_ data: Data) -> Void) {
        AF.request(URL(string: "\(BASE_URL)\(path)")!,
                   method: .get,
                   parameters: parameters,
                   headers: nil)
        .responseJSON {(response) in
            print(type(of: response))
            if let responseData = response.data {
                success(responseData)
                print(type(of: responseData))
            }else{
                print("FAILED")
            }
        }
    }
    
    
}
