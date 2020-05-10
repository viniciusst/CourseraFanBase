//
//  Actor.swift
//  FanBase
//
//  Created by Vinicius Teixeira on 2020-05-08.
//  Copyright © 2020 Vinicius Teixeira. All rights reserved.
//

import Foundation

struct Actor {
    private(set) public var nameActor: String
    private(set) public var imageActor: String
    
    init(nameActor: String, imageActor: String) {
        self.nameActor = nameActor
        self.imageActor = imageActor
    }
}
