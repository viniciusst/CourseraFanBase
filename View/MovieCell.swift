//
//  MovieCell.swift
//  FanBase
//
//  Created by Vinicius Teixeira on 2020-05-08.
//  Copyright © 2020 Vinicius Teixeira. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var actorsCollection: UICollectionView!
    
    private(set) public var actors = [Actor]()

    override func awakeFromNib() {
        super.awakeFromNib()
        self.actorsCollection.delegate = self
        self.actorsCollection.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCell", for: indexPath) as? ActorCell {
            let actor = actors[indexPath.row]
            cell.updateViews(actor: actor)
            
            return cell
        }
        
        return ActorCell()
    }
    
    func initActors(movie: Movie) {
        actors = DataService.instance.getActors(forMovieTitle: movie.titleMovie)
    }
    
    func updateViews(movie: Movie) {
        movieTitle.text = movie.titleMovie
    }
}

