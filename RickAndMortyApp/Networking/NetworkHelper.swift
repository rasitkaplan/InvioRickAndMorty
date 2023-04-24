//
//  NetworkHelper.swift
//  RickAndMortyApp
//
//  Created by rasit on 7.04.2023.
//

import Foundation

enum HTTPMethods: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

enum ErrorTypes: String, Error {
    case invalidData = "Invalid Data"
    case invalidURL = "Invalid URL"
    case unknownError = "An error unknown"
}

class NetworkHelper {
    
    static let shared = NetworkHelper()

    let locationUrl = "https://rickandmortyapi.com/api/location"
    let baseURLL = "https://rickandmortyapi.com/api/character/1"
}
