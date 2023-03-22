//
//  DetailVC.swift
//  MovieApp
//
//  Created by Sedat on 21.03.2023.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var lblMinutes: UILabel!
    
    @IBOutlet weak var ImdbLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "movie"
        
    }
    
}
