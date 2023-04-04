//
//  UIStoryboard+Extension.swift
//  MovieApp
//
//  Created by Sedat on 3.04.2023.
//

import Foundation
import UIKit

extension UIStoryboard {
    static private var mainStoryboard: UIStoryboard {
        get {
            UIStoryboard(name: StoryboardName.main.rawValue, bundle: .main)
        }
    }
    static func instantiateViewController<T: UIViewController>(type: T.Type) -> T {
        UIStoryboard.mainStoryboard.instantiateViewController(identifier: .init(describing: type)) as! T
    }
}
