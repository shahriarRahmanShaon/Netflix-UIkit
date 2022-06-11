//
//  Movie.swift
//  Netflix-
//
//  Created by sergio shaon on 11/6/22.
//

import Foundation

struct Movie: Codable{
    
    let results: [Results]
}

struct Results: Codable{
    
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let overview: String?
    let poster_path: String?
    let vote_count: Double?
    let release_date: String?
    
}
