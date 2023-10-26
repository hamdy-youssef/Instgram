//
//  HomeScreenVC.swift
//  Instgram
//
//  Created by Hamdy Youssef on 21/10/2023.
//

import UIKit
import RxSwift
import RxCocoa

class HomeScreenVC: UIViewController {

    @IBOutlet var homeTableView: UITableView!
    
    let disposeBag = DisposeBag()
    let arrayOfPosts  = Observable.just(Posts.setPostsData())

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableData()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func messegeAction(_ sender: Any) {
        let sb = UIStoryboard (name: "Main", bundle: nil)
        let messegevc = sb.instantiateViewController (withIdentifier: "MessageVC") as! MessageVC
        self.present(messegevc, animated: true)
//        self.navigationController?.pushViewController(messegevc, animated: true)
    }

    func setTableData() {
        arrayOfPosts
            .bind(to: homeTableView
                .rx
                .items(cellIdentifier: "HomeTVCell", cellType: HomeTVCell.self)) {
                    (row, post, cell) in
                    cell.accountImage.image = UIImage.init(named: post.accountImage)
                    cell.accountName.text = post.accountName
                    cell.postImage.image = UIImage.init(named: post.postImage)
                    cell.likes.text = post.likes
                    cell.content.text = post.content
                    
                    cell.accountImage.layer.borderWidth = 1
                    cell.accountImage.layer.masksToBounds = false
                    cell.accountImage.layer.borderColor = UIColor.black.cgColor
                    cell.accountImage.layer.cornerRadius = cell.accountImage.frame.height/2
                    cell.accountImage.clipsToBounds = true
                    
//                    cell.isUserInteractionEnabled = false
                    cell.selectionStyle = .none

                }
                .disposed(by: disposeBag)
        
    }
    
  
}

