//
//  LocationModel.swift
//  RickAndMortyApp
//
//  Created by rasit on 7.04.2023.
//

import Foundation

// MARK: - LocationModel
struct LocationModel: Codable {
    let info: Info?
    let results: [LocationResult]?
}

// MARK: - Info
struct Info: Codable {
    let count, pages: Int?
    let next: String?
}

// MARK: - Result
struct LocationResult: Codable {
    let id: Int?
    let name, type, dimension: String?
    let residents: [String]?
    let url: String?
    let created: String?
}
