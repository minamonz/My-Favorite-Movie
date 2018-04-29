//
//  ViewController.swift
//  myFavMovie
//
//  Created by Mina on 4/17/18.
//  Copyright © 2018 mina. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    var Movies = [MoviedetailsModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        Movies.append(MoviedetailsModel(laImage: "x-men", Latext: "X-men", Destext: "the best Movie"))
        Movies.append(MoviedetailsModel(laImage: "black panther", Latext: "Black Panther", Destext: "the best Movie"))
        Movies.append(MoviedetailsModel(laImage: "undisputed", Latext: "Undisputed", Destext: "the best Movie"))
        Movies.append(MoviedetailsModel(laImage: "never back down", Latext: "Never Back Down", Destext: "the best Movie"))

        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Movies.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellVC", for: indexPath) as! CellVC
     
      cell.labelCell.text = Movies[indexPath.row].latext
    cell.desCell.text = Movies[indexPath.row].Destext
        cell.imageCell.image = UIImage(named: Movies[indexPath.row].laImage)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "MovieSegue", sender: Movies[indexPath.row])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? myMovie{
            if let Movies = sender as? MoviedetailsModel {
                destination.name = Movies.latext
                destination.DES = Movies.Destext
                destination.image = Movies.laImage
    
    
}
}
}
}

