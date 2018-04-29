//
//  CellVC.swift
//  myFavMovie
//
//  Created by Mac on 4/29/18.
//  Copyright © 2018 mina. All rights reserved.
//

import UIKit

class CellVC: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    @IBOutlet weak var desCell: UITextView!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
