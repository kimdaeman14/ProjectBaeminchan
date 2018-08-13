//
//  DetailViewController.swift
//  Baeminchan
//
//  Created by kimdaeman14 on 2018. 8. 14..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    let str = "안녕하세요"
    let str2 = "반갑습니다"
    let image = #imageLiteral(resourceName: "c0420529ceed879acfb2ff88d9dac7ae")
    let arrImage: [String] = ["a3064bfb56f135be09b06708ba566425",
                              "3949333424a06b2ef9044bba084b05f0",
                              "8093f88d6cc26265fc81962d84913576",
                              "c0420529ceed879acfb2ff88d9dac7ae"
    ]
    
    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //닙네임은 파일이름
        tableView.register(UINib(nibName: "ItemInfoCell", bundle: nil), forCellReuseIdentifier: ItemInfoCell.reusableIdentifier)
        tableView.register(UINib(nibName: "DetailMenubarCell", bundle: nil), forCellReuseIdentifier:
            DetailMenubarCell.reusableIdentifier)
        tableView.register(UINib(nibName: "HelpCallCell", bundle: nil), forCellReuseIdentifier: HelpCallCell.reusableIdentifier)
        tableView.register(UINib(nibName: "SellerInfoCell", bundle: nil), forCellReuseIdentifier: SellerInfoCell.reusableIdentifier)
    }
}


extension DetailViewController: ListReloadDelegate {
    func ListReload(){
        print("\n---------- [ 잘되는건가 ? ? ? ] ----------\n")
    }
    
}




extension DetailViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "PageControlCell", for: indexPath) as! PageControlCell
            tableView.rowHeight = 250
            return cell1
            
        case 1:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: ItemInfoCell.reusableIdentifier, for: indexPath) as! ItemInfoCell
            tableView.rowHeight = 300
            return cell2
            
        case 2:
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "AnotherItemCell", for: indexPath) as! AnotherItemCell
            tableView.rowHeight = 200
            return cell3
            
        case 3:
            tableView.rowHeight = 40
            let cell4 = tableView.dequeueReusableCell(withIdentifier: "DetailMenubarCell") as! DetailMenubarCell
            cell4.delegate = self
            return cell4
            
        case 4:
            let cell5 = tableView.dequeueReusableCell(withIdentifier: "DetailImageCell") as! DetailImageCell
            return cell5
            
        case 5:
            let cell6 = tableView.dequeueReusableCell(withIdentifier: HelpCallCell.reusableIdentifier) as! HelpCallCell
            tableView.rowHeight = 400
            return cell6
            
        case 6:
            let cell7 = tableView.dequeueReusableCell(withIdentifier: SellerInfoCell.reusableIdentifier) as! SellerInfoCell
            tableView.rowHeight = 400
            return cell7
            
        default:
            print("fail")
        }
        
        return cell
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int{
        
        return 7
    }
    
}
