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
    let rawName : String //제품이름
    let description : String //제품설명
    let thumbnailUrl : String //메인썸네일페이징이미지
    let price : Int //원래가격
    let salePrice : Int //세일가격
    let productImageSet: [ProductImageSet] //상세정보 이미지 리스트
    let supplier : String //판매자이름
    let stock : Int //할인율
    let relatedProducts: [RelatedProducts] ////판매자의 다른상품
    
    enum CodingKeys: String, CodingKey {
        case id
        case productImageSet = "productimage_set"
        case relatedProducts = "related_products"
        case rawName = "raw_name"
        case description
        case thumbnailUrl = "thumbnail_url"
        case salePrice = "sale_price"
        case supplier
        case stock
        case price 
        
    }
    
    struct ProductImageSet : Decodable { //상세정보 이미지 리스트
        let imageUrl:String
        
        enum CodingKeys: String, CodingKey{
            case imageUrl = "image_url"
        }
    }
    
    struct RelatedProducts : Decodable { //판매자의 다른상품
        let id : Int
        let rawname : String
        let description : String
        let discountRate : Int
        let price : Int
        let salePrice: Int
        let thumbnailUrl : String

        enum CodingKeys: String, CodingKey {
            case id
            case rawname = "raw_name"
            case description
            case discountRate = "discount_rate"
            case price
            case salePrice = "sale_price"
            case thumbnailUrl = "thumbnail_url"
        }
    }
    
    
    
    
}








