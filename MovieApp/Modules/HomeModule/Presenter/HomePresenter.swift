//
//  HomePresenter.swift
//  MovieApp
//
//  Created by Sedat on 2.04.2023.
//

import Foundation

protocol HomePresenterInterface: AnyObject {
    func viewDidLoad()
}

final class HomePresenter {
    private weak var view: HomeViewInterface?
    private let interactor: HomeInteractorInterface
    private let router: HomeRouterInterface
    init(view: HomeViewInterface, router: HomeRouterInterface, interactor: HomeInteractorInterface) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension HomePresenter: HomePresenterInterface {
    func viewDidLoad() {
        view?.setMovieMinutesLabel(text: "aaaaa")
        view?.setMovieImdbLabel(text: "bbbbb")
        view?.setMovieNameLabel(text: "cccccc")
        view?.setMovieImage(image: #imageLiteral(resourceName: "starwars"))
    }
}
