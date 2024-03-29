//
//  NetworkManager.swift
//  RickAndMortyApp
//
//  Created by rasit on 7.04.2023.
//

import Foundation
import Alamofire

class NetworkManager {
    
    static func request<T: Codable>(type: T.Type, url: String, method: HTTPMethod, completion: @escaping((Result<T, ErrorTypes>) -> ())) {
        AF.request(url, method: method).response { response in
            
            switch response.result {
            case .success(let data):
                self.handleResponse(data: data!) { response in
                    completion(response)
                }
            case .failure(_):
                completion(.failure(.unknownError))
            }
        }
        
    }
    
    private static func handleResponse<T: Codable>(data: Data, completion: @escaping((Result<T, ErrorTypes>) -> ())) {
        do {
            let result = try JSONDecoder().decode(T.self, from: data)
            completion(.success(result))
        } catch {
            completion(.failure(.invalidData))
        }
    }
}
