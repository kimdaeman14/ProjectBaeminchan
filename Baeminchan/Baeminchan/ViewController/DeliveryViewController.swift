//
//  DeliveryViewController.swift
//  Baeminchan
//
//  Created by kimdaeman14 on 2018. 8. 16..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class DeliveryViewController: UIViewController {

    @IBOutlet weak var DeliveryTableView:UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DeliveryTableView.register(UINib(nibName: "DeliveryDayCell", bundle: nil), forCellReuseIdentifier: DeliveryDayCell.reusableIdentifier)

    }


}


extension DeliveryViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DeliveryDayCell.reusableIdentifier, for: indexPath) as! DeliveryDayCell
        tableView.rowHeight = 800
        return cell
    }
    
    
    
}
