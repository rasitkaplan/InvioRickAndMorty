//
//  LocationIdModel.swift
//  RickAndMortyApp
//
//  Created by rasit on 12.04.2023.
//

import Foundation

// MARK: - CharacterModelElement
struct CharacterModel: Codable {
    let id: Int?
    let name: String?
    let status: String?
    let species: String?
    let type: String?
    let gender: String?
    let origin, location: Location?
    let image: String?
    let episode: [String]?
    let url: String?
    let created: String?
}


// MARK: - Location
struct Location: Codable {
    let name: String?
    let url: String?
}
typealias CharacterModelData = [CharacterModel]

