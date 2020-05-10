//
//  DataService.swift
//  FanBase
//
//  Created by Vinicius Teixeira on 2020-05-08.
//  Copyright © 2020 Vinicius Teixeira. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let movies = [
        Movie(titleMovie: "The Lord of the Rings"),
        Movie(titleMovie: "The Hobbit"),
        Movie(titleMovie: "Fast and Furious"),
        Movie(titleMovie: "The Avengers")
    ]
    
    private let lordRings = [
        Actor(nameActor: "Elijah Wood", imageActor: "lordRing01.png"),
        Actor(nameActor: "Viggo Mortensen", imageActor: "lordRing02.png"),
        Actor(nameActor: "Orlando Bloom", imageActor: "lordRing03.png"),
        Actor(nameActor: "Ian McKellen", imageActor: "lordRing04.png"),
        Actor(nameActor: "Sean Astin", imageActor: "lordRing05.png")
    ]
    
    private let hobbits = [
        Actor(nameActor: "Evangeline Lilly", imageActor: "hobbits01.png"),
        Actor(nameActor: "Martin Freeman", imageActor: "hobbits02.png"),
        Actor(nameActor: "Richard Armitage", imageActor: "hobbits03.png"),
        Actor(nameActor: "Orlando Bloom", imageActor: "hobbits04.png"),
        Actor(nameActor: "Luke Evans", imageActor: "hobbits05.png")
    ]
    
    private let fastFurious = [
        Actor(nameActor: "Paul Walker", imageActor: "fastFurious01.png"),
        Actor(nameActor: "Vin Diesel", imageActor: "fastFurious02.png"),
        Actor(nameActor: "Jordana Brewster", imageActor: "fastFurious03.png"),
        Actor(nameActor: "Michelle Rodriguez", imageActor: "fastFurious04.png"),
        Actor(nameActor: "Sung Kang", imageActor: "fastFurious05.png")
    ]
    
    private let avengers = [
        Actor(nameActor: "Scarlett Johansson", imageActor: "avengers01.png"),
        Actor(nameActor: "Chris Evans", imageActor: "avengers02.png"),
        Actor(nameActor: "Robert Downey Jr.", imageActor: "avengers03.png"),
        Actor(nameActor: "Chris Hemsworth", imageActor: "avengers04.png"),
        Actor(nameActor: "Mark Ruffalo", imageActor: "avengers05.png")
    ]
    
    func getMovies() -> [Movie] {
        return movies
    }
    
    func getActors(forMovieTitle title: String) -> [Actor] {
        switch title {
        case "The Lord of the Rings":
            return getLordRings()
        case "The Hobbit":
            return getHobbits()
        case "Fast and Furious":
            return getFastFurious()
        case "The Avengers":
            return getAvengers()
        default:
            return getLordRings()
        }
    }
    
    func getLordRings() -> [Actor] {
        return lordRings
    }
    
    func getHobbits() -> [Actor] {
        return hobbits
    }
    
    func getFastFurious() -> [Actor] {
        return fastFurious
    }
    
    func getAvengers() -> [Actor] {
        return avengers
    }
}
