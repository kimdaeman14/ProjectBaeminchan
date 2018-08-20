//
//  ViewController.swift
//  servertest
//
//  Created by kimdaeman14 on 2018. 8. 16..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        takeData()
        
    }

    var products: [Products.ProductImageSet] = []
//    {
//        didSet {
//            self.collectView.reloadData()
//        }
//    }
    var otherProducts: [Products.RelatedProducts] = []

 
    func takeData(){
        let url = URL(string: "https://server.yeojin.me/api/products/29")
                Alamofire.request(url!, method: HTTPMethod.get)
            .validate(statusCode: 200..<400)
            .responseData { [weak self] (response) in
                guard let strongSelf = self else { return }
                switch response.result{
                    case .success(let value):
                        print(value)
                        do{
                            print("1")
                            let pro1 = try JSONDecoder().decode(Products.self, from: value)
                            print(pro1)
                            strongSelf.products = pro1.productImageSet
                            strongSelf.otherProducts = pro1.relatedProducts
                            print("2")
                            print(strongSelf.products)
                            print(strongSelf.otherProducts)

                        }catch{
                            print(error.localizedDescription, "success")
                        }

                    case .failure(let error):
                        print(error, "failure")
                    }
        }
    }
    
    

}

