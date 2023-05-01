//
//  HomeRouter.swift
//  MovieApp
//
//  Created by Sedat on 2.04.2023.
//

import Foundation
import UIKit

protocol HomeRouterInterface: AnyObject {
}

final class HomeRouter {
    private var navigationController: UINavigationController?
    init(navigationController: UINavigationController? = nil) {
        self.navigationController = navigationController
    }
    static func createModule(using navigationController: UINavigationController) -> UIViewController {
        let view = UIStoryboard.instantiateViewController(type: HomeViewController.self)
        let interactor = HomeInteractor()
        let router = HomeRouter(navigationController: navigationController)
        let presenter = HomePresenter(view: view, router: router, interactor: interactor)
        view.presenter = presenter
        return view
    }
}

extension HomeRouter: HomeRouterInterface {
}
