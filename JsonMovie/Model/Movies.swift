//
//  Movies.swift
//  JsonMovie
//
//  Created by German David Vertel Narvaez on 21/06/24.
//

import Foundation

struct Movies: Codable {
    let page: Int
    let results: [Result]

    enum CodingKeys: String, CodingKey {
        case page, results
    }
}

// MARK: - Result
struct Result: Codable, Identifiable {
    let id: Int
    let originalLanguage, originalTitle, overview: String
    let popularity: Double
    let posterPath: String

    enum CodingKeys: String, CodingKey {
        case id
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
       
    }
}
