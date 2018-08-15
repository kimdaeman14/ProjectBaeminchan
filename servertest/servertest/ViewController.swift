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

    var products: [Products] = []
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
                switch response.result{
                    case .success(let value):
                        print(value)
                        do{
                            print("1")
                            self?.products = try JSONDecoder().decode([Products].self, from: value)
                            print("2")

                        }catch{
                            print(error.localizedDescription, "success")
                        }
                        print(self?.products)

                    case .failure(let error):
                        print(error, "failure")
                    }
        }
    }
    
    

}

