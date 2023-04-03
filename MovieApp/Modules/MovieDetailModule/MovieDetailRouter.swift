//
//  MovieDetailRouter.swift
//  MovieApp
//
//  Created by Sedat on 2.04.2023.
//

import Foundation
import UIKit

protocol MovieDetailRouterInterface: AnyObject {
    func push(identifier: StoryboardId)
    func push(identifier: StoryboardId, delegate: AnyObject)
    func push(identifier: StoryboardId, delegate: AnyObject, args: Any )
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
        let presenter = MovieDetailPresenter(view: view, router: router, interactor: interactor as! MovieDetailInteractorInterface)
        view.presenter = presenter
        return view
    }
}

extension MovieDetailRouter: MovieDetailRouterInterface {
    func push(identifier: StoryboardId) {
        NavigatableManager.shared.push(to: identifier, navigationController: navigationController)
    }
    
    func push(identifier: StoryboardId, delegate: AnyObject) {
        NavigatableManager.shared.push(to: identifier, navigationController: navigationController, delegate: delegate)
    }
    
    func push(identifier: StoryboardId, delegate: AnyObject, args: Any ) {
        NavigatableManager.shared.push(to: identifier, navigationController: navigationController, delegate: delegate, args: args)
    }


}
