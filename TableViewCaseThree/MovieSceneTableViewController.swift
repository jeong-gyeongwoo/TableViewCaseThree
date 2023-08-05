//
//  MovieSceneTableViewController.swift
//  TableViewCaseThree
//
//  Created by 정경우 on 2023/08/04.
//

import UIKit

class MovieSceneTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "MovieSceneTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MovieSceneTableViewCell")
      
        tableView.rowHeight = 200
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieInfo().movie.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //for 쓴거랑 안쓴거 차이 -> 요소만 수정? or 셀을 수정?
        // 안해도 자동아닌가?
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieSceneTableViewCell", for: indexPath) as! MovieSceneTableViewCell
        
        cell.titleLabel.text = MovieInfo().movie[indexPath.row].title
        cell.dateTimeRateLabel.text = " \(MovieInfo().movie[indexPath.row].releaseDate) | \(MovieInfo().movie[indexPath.row].runtime) | \(MovieInfo().movie[indexPath.row].rate) "
        cell.overviewLabel.text = MovieInfo().movie[indexPath.row].overview
        cell.movieImageLabel.image = UIImage(named: MovieInfo().movie[indexPath.row].title)
        
        return cell
    
    }
   

}
