//
//  Movie.swift
//  FanBase
//
//  Created by Vinicius Teixeira on 2020-05-08.
//  Copyright © 2020 Vinicius Teixeira. All rights reserved.
//

import Foundation

struct Movie {
    private(set) public var titleMovie: String
    
    init(titleMovie: String) {
        self.titleMovie = titleMovie
    }
}
