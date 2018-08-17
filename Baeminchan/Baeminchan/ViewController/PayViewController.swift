//
//  PayViewController.swift
//  Baeminchan
//
//  Created by kimdaeman14 on 2018. 8. 17..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class PayViewController: UIViewController {
    
    @IBOutlet weak var PayTableView:UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PayTableView.register(UINib(nibName: "PayStatusbarCell", bundle: nil), forCellReuseIdentifier: PayStatusbarCell.reusableIdentifier)
        PayTableView.register(UINib(nibName: "ProductInfoCell", bundle: nil), forCellReuseIdentifier: ProductInfoCell.reusableIdentifier)
        PayTableView.register(UINib(nibName: "PriceInfoCell", bundle: nil), forCellReuseIdentifier: PriceInfoCell.reusableIdentifier)
        PayTableView.register(UINib(nibName: "PayInfoCell", bundle: nil), forCellReuseIdentifier: PayInfoCell.reusableIdentifier)
        PayTableView.register(UINib(nibName: "OrdererCell", bundle: nil), forCellReuseIdentifier: OrdererCell.reusableIdentifier)
        PayTableView.register(UINib(nibName: "BasicDestinationCell", bundle: nil), forCellReuseIdentifier: BasicDestinationCell.reusableIdentifier)
        PayTableView.register(UINib(nibName: "PayMethodCell", bundle: nil), forCellReuseIdentifier: PayMethodCell.reusableIdentifier)
        PayTableView.register(UINib(nibName: "AgreementCell", bundle: nil), forCellReuseIdentifier: AgreementCell.reusableIdentifier)
        
    }
    
}

extension PayViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: PayStatusbarCell.reusableIdentifier, for: indexPath) as! PayStatusbarCell
            tableView.rowHeight = 80
            
            return cell1
        case 1:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: ProductInfoCell.reusableIdentifier, for: indexPath) as! ProductInfoCell
            tableView.rowHeight = 200
            
            return cell2
        case 2:
            let cell3 = tableView.dequeueReusableCell(withIdentifier: PriceInfoCell.reusableIdentifier, for: indexPath) as! PriceInfoCell
            tableView.rowHeight = 200
            return cell3
        case 3:
            let cell4 = tableView.dequeueReusableCell(withIdentifier: PayInfoCell.reusableIdentifier, for: indexPath) as! PayInfoCell
            tableView.rowHeight = 200
            
            return cell4
        case 4:
            let cell5 = tableView.dequeueReusableCell(withIdentifier: OrdererCell.reusableIdentifier, for: indexPath) as! OrdererCell
            tableView.rowHeight = 300
            return cell5
        case 5:
            let cell6 = tableView.dequeueReusableCell(withIdentifier: BasicDestinationCell.reusableIdentifier, for: indexPath) as! BasicDestinationCell
            tableView.rowHeight = 400
            return cell6
        case 6:
            let cell7 = tableView.dequeueReusableCell(withIdentifier: PayMethodCell.reusableIdentifier, for: indexPath) as! PayMethodCell
            tableView.rowHeight = 150
            return cell7
        case 7:
            let cell8 = tableView.dequeueReusableCell(withIdentifier: AgreementCell.reusableIdentifier, for: indexPath) as! AgreementCell
            tableView.rowHeight = 50
            return cell8
        default:
            print("fail")
        }
        
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int{
        return 8
    }
    
    
}
