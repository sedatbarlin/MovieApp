//
//  DetailVC.swift
//  MovieApp
//
//  Created by Sedat on 21.03.2023.
//

import UIKit

// TODO: Anyobject nedir araştıralım. Projeyi storyboard üzerinden değil de instatiate ederek nasıl ayağa kaldırabilirdik bir view'i, bunun için örne projeleri çekip debuglayalım.
// TODO: view yaşam döngüsünü anla ve github dan movie projesi çekip debugla.

protocol MovieDetailViewInterface: AnyObject {
    func setMovieNameLabel(text: String)
    func setMovieMinutesLabel(text: String)
    func setMovieImdbLabel(text: String)
    func setMovieDescriptionLabel(text: String)
}
final class MovieDetailViewController: UIViewController {
    @IBOutlet private weak var playButton: UIButton!
    @IBOutlet private weak var movieNameLabel: UILabel!
    @IBOutlet private weak var movieMinutesLabel: UILabel!
    @IBOutlet private weak var movieImdbLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    var presenter: MovieDetailPresenterInterface!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Movies"
        presenter?.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
    }
}
extension MovieDetailViewController: MovieDetailViewInterface {
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

