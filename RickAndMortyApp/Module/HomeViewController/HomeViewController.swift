//
//  HomeViewController.swift
//  RickAndMortyApp
//
//  Created by rasit on 7.04.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = LocationViewModel()
    var location: LocationModel?
    var locations: [String] = []
    var locationTable : LocationResult?
    var characters : CharacterModelData?
    var imageURL = "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.reloadDelegate = self
        viewModel.getLocationList()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        collectionView.setCollectionViewLayout(layout, animated: true)
        registerHomeTableView()
        registerHomeCollectionView()
        }
    
    private func registerHomeTableView () {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "HomeTableCell", bundle: nil), forCellReuseIdentifier: "HomeTableCell")
    }
    private func registerHomeCollectionView () {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "HomeCollectionCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionCell")
    }
}

extension HomeViewController: getLocation, ReloadTableViewProtocol {
    func getLocation(location: LocationModel) {
        self.location = location
        for i in location.results?[0].residents ?? [] {
            let last = i.components(separatedBy: "/")
            locations.append(last.last ?? "")
        }
        let joined = locations.joined(separator: ",")
        viewModel.getCharacters(ids: joined)
        collectionView.reloadData()
    }
    
    func reloadTableView(character: CharacterModelData) {
        self.characters = character
        tableView.reloadData()
    }
}

