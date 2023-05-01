//
//  HomeViewCellPresenter.swift
//  MovieApp
//
//  Created by Sedat on 25.04.2023.
//

import Foundation
import UIKit

protocol HomeViewCellPresenterInterface: AnyObject {
    func viewDidLoad()
}

final class HomeViewCellPresenter {
    private weak var view: HomeViewCellInterface?
}

extension HomeViewCellPresenter: HomeViewCellPresenterInterface {
    func viewDidLoad() {
        <#code#>
    }
}
