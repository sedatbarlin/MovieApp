//
//  MovieDetailRouter.swift
//  MovieApp
//
//  Created by Sedat on 2.04.2023.
//

import Foundation
import UIKit

protocol MovieDetailRouterInterface: AnyObject {
}

final class MovieDetailRouter {
    private var navigationController: UINavigationController?
    init(navigationController: UINavigationController? = nil) {
        self.navigationController = navigationController
    }
    static func createModule(using navigationController: UINavigationController) -> UIViewController {
        let view = UIStoryboard.instantiateViewController(type: MovieDetailViewController.self)
        let interactor = MovieDetailInteractor()
        let router = MovieDetailRouter(navigationController: navigationController)
        let presenter = MovieDetailPresenter(view: view, router: router, interactor: interactor)
        view.presenter = presenter
        return view
    }
}

extension MovieDetailRouter: MovieDetailRouterInterface {
}
