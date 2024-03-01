//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Alexandr Filovets on 1.03.24.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
