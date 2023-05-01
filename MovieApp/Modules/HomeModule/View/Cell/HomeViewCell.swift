//
//  HomeViewCell.swift
//  MovieApp
//
//  Created by Sedat on 25.04.2023.
//

import Foundation
import UIKit

protocol HomeViewCellInterface: AnyObject {
    func setMovieImage(_ imageUrl: URL)
    func setMovieNameLabel(_ text: String)
    func setMovieMinutesLabel(_ text: String)
    func setMovieImdbLabel(_ text: String)
}

final class movieCell: UICollectionViewCell {
    @IBOutlet private weak var movieImage: UIImageView!
    @IBOutlet private weak var movieNameLabel: UILabel!
    @IBOutlet private weak var movieMinutesLabel: UILabel!
    @IBOutlet private weak var movieImdbLabel: UILabel!
    @IBOutlet private weak var infoView: UIView!
    var cellPresenter: HomeViewCellPresenterInterface! {
        didSet {
            cellPresenter.viewDidLoad()
        }
    }
    override func awakeFromNib() {
        movieImage.layer.cornerRadius = 50
        infoView.layer.cornerRadius = 50
    }
}

extension movieCell: HomeViewCellInterface {
    func setMovieImage(_ imageUrl: URL) {
        <#code#>
    }
    
    func setMovieNameLabel(_ text: String) {
        movieNameLabel.text = text
    }
    
    func setMovieMinutesLabel(_ text: String) {
        movieMinutesLabel.text = text
    }
    
    func setMovieImdbLabel(_ text: String) {
        movieImdbLabel.text = text
    }
}

