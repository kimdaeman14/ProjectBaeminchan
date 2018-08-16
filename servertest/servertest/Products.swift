//
//  Products.swift
//  servertest
//
//  Created by kimdaeman14 on 2018. 8. 16..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import Foundation


struct Products : Decodable {
    let id: Int
    let rawname : String
    let description : String
    let thumbnailurl : String
    let saleprice : Int
    let productimageSet: [ProductimageSet]
    
    enum CodingKeys: String, CodingKey {
        case id
        case productimageSet = "productimage_set"
        case rawname = "raw_name"
        case description
        case thumbnailurl = "thumbnail_url"
        case saleprice = "sale_price"
        
    }
    
    struct ProductimageSet : Decodable {
        let imageUrl:String
        
        enum CodingKeys: String, CodingKey{
            case imageUrl = "image_url"
        }
    }
    
}








