//
//  LocationViewModel.swift
//  RickAndMortyApp
//
//  Created by rasit on 7.04.2023.
//

import Foundation

protocol getLocation: AnyObject {
    func getLocation(location: LocationModel)
}

protocol ReloadTableViewProtocol: AnyObject {
    func reloadTableView(character: CharacterModelData)
}

class LocationViewModel {
    weak var delegate: getLocation?
    weak var reloadDelegate: ReloadTableViewProtocol?

    func getLocationList() {
        NetworkManager.request(type: LocationModel.self, url: NetworkHelper.shared.locationUrl, method: .get) { [weak self] response in
            guard let self = self else { return }
            switch response {
            case .success(let locationData):
                self.delegate?.getLocation(location: locationData)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func getCharacters(ids: String) {
        NetworkManager.request(type: CharacterModelData.self, url: NetworkHelper.shared.baseURLL + ids, method: .get) { [weak self] response in
            guard let self = self else { return }
            switch response {
            case .success(let characterData):
                debugPrint(characterData)
                self.reloadDelegate?.reloadTableView(character: characterData)
            case .failure(let error):
                print(error)
            }
        }
    }
}

