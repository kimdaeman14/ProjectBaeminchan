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
        
        
        DeliveryTableView.register(UINib(nibName: "DissmissCell", bundle: nil), forCellReuseIdentifier: DissmissCell.reusableIdentifier)
        DeliveryTableView.register(UINib(nibName: "DeliveryDayCell", bundle: nil), forCellReuseIdentifier: DeliveryDayCell.reusableIdentifier)
        
    }
    
    
}


extension DeliveryViewController: OrderButtonDelegate {
    func OrderButton(){
        print("\n---------- [ CalenderButtonDelegate ? ? ? ] ----------\n")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navigationViewController = storyboard.instantiateViewController(withIdentifier: "toPayVC")
        navigationViewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(navigationViewController, animated: true)
        
    }
}

extension DeliveryViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: DissmissCell.reusableIdentifier, for: indexPath) as! DissmissCell
            tableView.rowHeight = 80
            return cell1
        case 1:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: DeliveryDayCell.reusableIdentifier, for: indexPath) as! DeliveryDayCell
            tableView.rowHeight = 800
            cell2.delegate = self
            return cell2
        default:
            print("fail")
        }
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int{
        return 2
    }
    
    
    
}
