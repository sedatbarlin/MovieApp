//
//  HomeVC.swift
//  MovieApp
//
//  Created by Sedat on 21.03.2023.
//

import UIKit

protocol HomeViewInterface: AnyObject {
    func setMovieImage(image: UIImage)
    func setMovieNameLabel(text: String)
    func setMovieMinutesLabel(text: String)
    func setMovieImdbLabel(text: String)
}

final class HomeViewController: UIViewController {
    @IBOutlet private weak var collectionView: UICollectionView!
    var presenter: HomePresenterInterface!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - CollectionView
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! movieCell
        return cell
    }
}
