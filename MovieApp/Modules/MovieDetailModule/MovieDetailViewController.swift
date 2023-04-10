//
//  DetailVC.swift
//  MovieApp
//
//  Created by Sedat on 21.03.2023.
//

import UIKit

protocol MovieDetailViewInterface: AnyObject {
    func setMovieNameLabel(text: String)
    func setMovieMinutesLabel(text: String)
    func setMovieImdbLabel(text: String)
    func setMovieDescriptionLabel(text: String)
    func setNavigationTitleLabel(text: String)
}

final class MovieDetailViewController: UIViewController {
    @IBOutlet private weak var playButton: UIButton!
    @IBOutlet private weak var movieNameLabel: UILabel!
    @IBOutlet private weak var movieMinutesLabel: UILabel!
    @IBOutlet private weak var movieImdbLabel: UILabel!
    @IBOutlet private weak var movieDescriptionLabel: UILabel!
    var presenter: MovieDetailPresenterInterface!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension MovieDetailViewController: MovieDetailViewInterface {
    func setNavigationTitleLabel(text: String) {
        navigationItem.title = text
    }
    func setMovieMinutesLabel(text: String) {
        movieMinutesLabel.text = text
    }
    func setMovieImdbLabel(text: String) {
        movieImdbLabel.text = text
    }
    func setMovieDescriptionLabel(text: String) {
        movieDescriptionLabel.text = text
    }
    func setMovieNameLabel(text: String) {
        movieNameLabel.text = text
    }
}
