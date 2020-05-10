//
//  ActorCell.swift
//  FanBase
//
//  Created by Vinicius Teixeira on 2020-05-08.
//  Copyright © 2020 Vinicius Teixeira. All rights reserved.
//

import UIKit

class ActorCell: UICollectionViewCell {
    
    @IBOutlet weak var actorImage: UIImageView!
    @IBOutlet weak var actorName: UILabel!
    
    func updateViews(actor: Actor) {
        actorImage.image = UIImage(named: actor.imageActor)
        actorName.text = actor.nameActor
    }
}
