//
//  myMovie.swift
//  myFavMovie
//
//  Created by Mina  on 4//18.
//  Copyright © 2018 mina. All rights reserved.
//

import UIKit

class myMovie: UIViewController {
var name = ""
    var DES = ""
    var image = ""
    
    @IBOutlet weak var labelmovie: UILabel!
    @IBOutlet weak var imagemovie: UIImageView!

    @IBOutlet weak var desmovie: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelmovie.text = name
        desmovie.text = DES
        imagemovie.image = UIImage(named: image)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
