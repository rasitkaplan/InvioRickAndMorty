//
//  HomeViewController + TableView.swift
//  RickAndMortyApp
//
//  Created by rasit on 7.04.2023.
//

import Foundation
import UIKit
import Kingfisher

extension HomeViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableCell", for: indexPath) as! HomeTableCell
        cell.nameLabel.text = characters?[indexPath.row].name ?? ""
        cell.imageImageView.kf.setImage(with: URL(string: characters?[indexPath.row].image ?? ""))
        switch characters?[indexPath.row].gender {
        case "Male":
            cell.genderImageView.image = UIImage(named: "male")
        case "Female":
            cell.genderImageView.image = UIImage(named: "female")
        case "unknown":
            cell.genderImageView.image = UIImage(named: "unknown")
        default:break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.charachter = characters?[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
