//
//  NavigatableManager.swift
//  MovieApp
//
//  Created by Sedat on 3.04.2023.
//

import Foundation
import UIKit

class NavigatableManager {
    static let shared = NavigatableManager()
    private let items: [Navigatable] = []
    
    func push(to identifier: StoryboardId, navigationController: UINavigationController?, delegate: AnyObject? = nil, args: Any? = nil) {
        items.first(where: { $0.isSatisfied(identifier: identifier, delegate: delegate, args: args) })?
            .execute(navigationController: navigationController, delegate: delegate, args: args)
    }
}
