//
//  SplashViewController.swift
//  RickAndMortyApp
//
//  Created by rasit on 7.04.2023.
//

import UIKit

class SplashViewController: UIViewController {
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        /// Navigate HomeViewController after 2 seconds when application start.
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let vc = HomeViewController()
            self.navigationController?.setViewControllers([vc], animated: true)
        }
    }
}
