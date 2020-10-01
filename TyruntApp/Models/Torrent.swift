//
//  Torrent.swift
//  TyruntApp
//
//  Created by Charlton Smith on 9/23/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

struct Torrent: Decodable {
    
    let id: Int
    let url: String
    var imdbCode: String
    let title: String
    let titleEnglish: String
    let titleLong: String
    let slug: String
    let year: Int
    let rating: Double
    let runtime: Int
    let genres: [String]
    let summary: String
    let descriptionFull: String
    let synopsis: String
    let ytTrailerCode: String
    let language: String
    let mpaRating: String
    let backgroundImage: String
    let backgroundImageOriginal: String
    let smallCoverImage: String
    let mediumCoverImage: String
    let largeCoverImage: String
    let state: String
    let torrents: [Magnet]?
    let createdAt: String
}
