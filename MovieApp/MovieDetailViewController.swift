//
//  DetailVC.swift
//  MovieApp
//
//  Created by Sedat on 21.03.2023.
//

import UIKit

final class MovieDetailViewController: UIViewController {
    
    
    @IBOutlet weak private var playButton: UIButton!
    
    @IBOutlet weak private var movieNameLabel: UILabel!
    
    @IBOutlet weak private var movieMinutesLabel: UILabel!
    
    @IBOutlet weak private var movieImdbLabel: UILabel!
    
    @IBOutlet weak private var movieDescriptionLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "movie"
        
    }
    
}
