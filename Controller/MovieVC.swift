//
//  ViewController.swift
//  FanBase
//
//  Created by Vinicius Teixeira on 2020-05-08.
//  Copyright © 2020 Vinicius Teixeira. All rights reserved.
//

import UIKit

class MovieVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var movieTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTable.dataSource = self
        movieTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 210.0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getMovies().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell {
            let movie =  DataService.instance.getMovies()[indexPath.row]
            cell.initActors(movie: movie)
            cell.updateViews(movie: movie)
            return cell
        } else {
            return MovieCell()
        }
    }
}
