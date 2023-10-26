//
//  MessageVC.swift
//  Instgram
//
//  Created by Hamdy Youssef on 22/10/2023.
//

import UIKit
import RxSwift
import RxCocoa


class MessageVC: UIViewController {
    
    @IBOutlet var messegeTV: UITableView!
    
    let disposeBag = DisposeBag()
    let arrayOfMessege  = Observable.just(MessegeData.messegeData())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableData()
        

        // Do any additional setup after loading the view.
    }
    

    func setTableData() {
        arrayOfMessege
            .bind(to: messegeTV
                .rx
                .items(cellIdentifier: "messageTVCell", cellType: messageTVCell.self)) {
                    (row, messege, cell) in
                    cell.accountImage.image = UIImage.init(named: messege.accountImage)
                    cell.accountName.text = messege.accountName
                    cell.message.text = messege.messege
                    
                    
                    cell.accountImage.layer.borderWidth = 1
                    cell.accountImage.layer.masksToBounds = false
                    cell.accountImage.layer.borderColor = UIColor.black.cgColor
                    cell.accountImage.layer.cornerRadius = cell.accountImage.frame.height/2
                    cell.accountImage.clipsToBounds = true
                    cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: cell.bounds.size.width)
                    //                    cell.isUserInteractionEnabled = false
                    cell.selectionStyle = .none
                    
                }
                .disposed(by: disposeBag)
        
        messegeTV
            .rx.setDelegate(self)
            .disposed(by: disposeBag)
        
    }
   
    @IBAction func backBtnAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
extension MessageVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
