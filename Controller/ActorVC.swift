//
//  ActorVC.swift
//  FanBase
//
//  Created by Vinicius Teixeira on 2020-05-09.
//  Copyright © 2020 Vinicius Teixeira. All rights reserved.
//

import UIKit

class ActorVC: UIViewController {
    
    private(set) public var actors = [Actor]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func initActors(movie: Movie) {
        actors = DataService.instance.getActors(forMovieTitle: movie.titleMovie)
        navigationItem.title =  movie.titleMovie
    }
}
