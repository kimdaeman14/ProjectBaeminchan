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

    var products: [Products.ProductimageSet] = []
//    {
//        didSet {
//            self.collectView.reloadData()
//        }
//    }
 
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
                            let pro = try JSONDecoder().decode(Products.self, from: value)
                            print(pro)
                            strongSelf.products = pro.productimageSet
                            print("2")
                            print(strongSelf.products)
                        }catch{
                            print(error.localizedDescription, "success")
                        }

                    case .failure(let error):
                        print(error, "failure")
                    }
        }
    }
    
    

}

