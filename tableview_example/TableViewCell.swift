//
//  TableViewCell.swift
//  tableview_example
//
//  Created by Batuhan Berk Ertekin on 8.07.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var pictureView: UIImageView!
    
    @IBOutlet weak var nameText: UILabel!
    
    
    @IBOutlet weak var directorText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
