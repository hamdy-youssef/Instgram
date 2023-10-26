//
//  messageTVCell.swift
//  Instgram
//
//  Created by Hamdy Youssef on 22/10/2023.
//

import UIKit

class messageTVCell: UITableViewCell {

    @IBOutlet var accountImage: UIImageView!
    @IBOutlet var accountName: UILabel!
    @IBOutlet var message: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
