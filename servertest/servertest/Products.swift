//
//  Products.swift
//  servertest
//
//  Created by kimdaeman14 on 2018. 8. 16..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import Foundation


struct Products : Codable {
    
    let rawname : String
    let description : String
    let thumbnailurl : String
    let saleprice : Int
    
//    productimage_set
    
    enum CodingKeys: String, CodingKey{
        case rawname = "raw_name"
        case description
        case thumbnailurl = "thumbnail_url"
        case saleprice = "sale_price"
    }
    
}


