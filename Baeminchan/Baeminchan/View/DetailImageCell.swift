//
//  DetailImageCell.swift
//  Baeminchan
//
//  Created by kimdaeman14 on 2018. 8. 14..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

    class DetailImageCell: UITableViewCell, UIScrollViewDelegate {
        
        @IBOutlet weak var scrollView: UIScrollView!
        var imageArr: [UIImage] = []
        override func awakeFromNib() {
            
            super.awakeFromNib()
            makeImageData()
            setUI()
        }
        
        
        func makeImageData(){
            for index in 1...10 {
                let imageName = "main_event_banner" + String(index)
                imageArr.append(UIImage(named: imageName)!)
            }
        }
        //375 812
        func setUI() {
            
            scrollView.delegate = self
            
            imageArr.forEach(addPageToScrollView(with:))
            
        }
        
        private func addPageToScrollView(with image: UIImage) {
            let pageFrame = CGRect(
                origin: CGPoint(x: 0, y: scrollView.contentSize.height),
                size: CGSize(width: scrollView.frame.width, height: scrollView.frame.height)
            )
            let imageButtonView = UIButton(frame: pageFrame)
            imageButtonView.contentMode = .scaleAspectFill
            imageButtonView.setBackgroundImage(image, for: .normal)
            scrollView.addSubview(imageButtonView)
            
            scrollView.contentSize.height += self.frame.height
        }
}



