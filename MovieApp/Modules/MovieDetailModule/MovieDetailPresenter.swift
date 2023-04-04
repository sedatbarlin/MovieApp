//
//  MovieDetailPresenter.swift
//  MovieApp
//
//  Created by Sedat on 2.04.2023.
//

import Foundation

protocol MovieDetailPresenterInterface {
    func viewDidLoad()
    func viewWillAppear()
}
final class MovieDetailPresenter {
    private weak var view: MovieDetailViewInterface?
    private let interactor: MovieDetailInteractorInterface
    private let router: MovieDetailRouterInterface
    init(view: MovieDetailViewInterface, router: MovieDetailRouterInterface, interactor: MovieDetailInteractorInterface) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}
extension MovieDetailPresenter: MovieDetailPresenterInterface {
    func viewDidLoad() {
        view?.setMovieNameLabel(text: "Star Wars: The Last Jedi")
        view?.setMovieDescriptionLabel(text: "Description")
        view?.setMovieImdbLabel(text: "7.0 (IMDb)")
        view?.setMovieMinutesLabel(text: "152 minutes")
    }
    func viewWillAppear() {
    }
}
