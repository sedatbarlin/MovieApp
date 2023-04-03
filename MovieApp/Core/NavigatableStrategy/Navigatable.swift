//
//  Navigatable.swift
//  MovieApp
//
//  Created by Sedat on 3.04.2023.
//

import Foundation
import UIKit

protocol Navigatable {
    func isSatisfied(identifier: StoryboardId, delegate: AnyObject?, args: Any?) -> Bool
    func execute(navigationController: UINavigationController?, delegate: AnyObject?, args: Any?)
}

