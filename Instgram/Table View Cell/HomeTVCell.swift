//
//  HomeTVCell.swift
//  Instgram
//
//  Created by Hamdy Youssef on 21/10/2023.
//

import UIKit

class HomeTVCell: UITableViewCell {

    @IBOutlet var accountImage: UIImageView!
    @IBOutlet var accountName: UILabel!
    @IBOutlet var postImage: UIImageView!
    @IBOutlet var likes: UILabel!
    @IBOutlet var content: UILabel!
    @IBOutlet var likeBtn: UIButton!
    @IBOutlet var commentBtn: UIButton!
    @IBOutlet var shareBtn: UIButton!
    @IBOutlet var saveBtn: UIButton!
    
    var tableView: UITableView?
    var isLblExpanded: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        content.numberOfLines = 2
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
    @IBAction func likeBtnAction(_ sender: Any) {
        if likeBtn.currentImage == UIImage(systemName: "heart")
        {
            likeBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            likeBtn.tintColor = .red
        }else {
            likeBtn.setImage(UIImage(systemName: "heart"), for: .normal)
            likeBtn.tintColor = .white
        }
        
    }
    @IBAction func saveBtnAction(_ sender: Any) {
        if saveBtn.currentImage == UIImage(systemName: "bookmark")
        {
            saveBtn.setImage(UIImage(systemName: "bookmark.fill"), for: .normal)
        }else {
            saveBtn.setImage(UIImage(systemName: "bookmark"), for: .normal)
        }
    }
    
    @IBAction func contentReadMoreAction(_ sender: Any) {
        if  content.numberOfLines == 2 {
            content.numberOfLines = 0
        } else {
            content.numberOfLines = 2
        }
        
    }
}
