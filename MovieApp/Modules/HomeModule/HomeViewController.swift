//
//  HomeVC.swift
//  MovieApp
//
//  Created by Sedat on 21.03.2023.
//

import UIKit

final class HomeViewController: UIViewController {
    @IBOutlet weak var goToDetailButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Movies"
    }
    @IBAction func goToDetailButton(_ sender: Any) {
        guard let navigationController = navigationController else { return }
        let viewController = MovieDetailRouter.createModule(using: navigationController)
        navigationController.show(viewController, sender: nil)
    }
}
