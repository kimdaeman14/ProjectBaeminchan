
//
//  CartViewController.swift
//  Baeminchan
//
//  Created by kimdaeman14 on 2018. 8. 16..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {
    
    @IBOutlet weak var CartViewTableView:UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CartViewTableView.register(UINib(nibName: "StatusbarCell", bundle: nil), forCellReuseIdentifier: StatusbarCell.reusableIdentifier)
        CartViewTableView.register(UINib(nibName: "AllSelectCell", bundle: nil), forCellReuseIdentifier: AllSelectCell.reusableIdentifier)
        CartViewTableView.register(UINib(nibName: "CartInfoCell", bundle: nil), forCellReuseIdentifier: CartInfoCell.reusableIdentifier)
        CartViewTableView.register(UINib(nibName: "InfomationCell", bundle: nil), forCellReuseIdentifier: InfomationCell.reusableIdentifier)
        CartViewTableView.register(UINib(nibName: "OrderPriceCell", bundle: nil), forCellReuseIdentifier: OrderPriceCell.reusableIdentifier)
        CartViewTableView.register(UINib(nibName: "HelpCallCell", bundle: nil), forCellReuseIdentifier: HelpCallCell.reusableIdentifier)
        CartViewTableView.register(UINib(nibName: "SellerInfoCell", bundle: nil), forCellReuseIdentifier: SellerInfoCell.reusableIdentifier)
        
    }
    
}

extension CartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

        switch indexPath.section {
        case 0:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: StatusbarCell.reusableIdentifier, for: indexPath) as! StatusbarCell
            tableView.rowHeight = 80

            return cell1
        case 1:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: AllSelectCell.reusableIdentifier, for: indexPath) as! AllSelectCell
            tableView.rowHeight = 60

            return cell2
        case 2:
            let cell3 = tableView.dequeueReusableCell(withIdentifier: CartInfoCell.reusableIdentifier, for: indexPath) as! CartInfoCell
            tableView.rowHeight = 300
            return cell3
        case 3:
            let cell4 = tableView.dequeueReusableCell(withIdentifier: InfomationCell.reusableIdentifier, for: indexPath) as! InfomationCell
            tableView.rowHeight = 250

            return cell4
        case 4:
            let cell5 = tableView.dequeueReusableCell(withIdentifier: OrderPriceCell.reusableIdentifier, for: indexPath) as! OrderPriceCell
            tableView.rowHeight = 300
            return cell5
        case 5:
            let cell6 = tableView.dequeueReusableCell(withIdentifier: HelpCallCell.reusableIdentifier, for: indexPath) as! HelpCallCell
            tableView.rowHeight = 200
            return cell6
        case 6:
            let cell7 = tableView.dequeueReusableCell(withIdentifier: SellerInfoCell.reusableIdentifier, for: indexPath) as! SellerInfoCell
            tableView.rowHeight = 400
            return cell7
        default:
            print("fail")
        }
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int{
        return 7
    }
    
}
