//
//  DeliveryDayCell.swift
//  Baeminchan
//
//  Created by kimdaeman14 on 2018. 8. 16..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

protocol OrderButtonDelegate: class { //프로토콜 aa는 func b()를 꼭 구현해야한다.
    func OrderButton()
}

class DeliveryDayCell: UITableViewCell {

    weak var delegate : OrderButtonDelegate?
    
    
    @IBAction private func OrderButton(_ sender: UIButton){
        delegate?.OrderButton()
    }

    
    static let reusableIdentifier = "DeliveryDayCell"

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
