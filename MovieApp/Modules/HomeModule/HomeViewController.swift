//
//  HomeVC.swift
//  MovieApp
//
//  Created by Sedat on 21.03.2023.
//

import UIKit

final class HomeViewController: UIViewController {
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Movies"
    }
    
    @IBAction func playButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailVC")
        self.navigationController?.show(vc, sender: nil)
    }
}
