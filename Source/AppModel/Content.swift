//
//  Content.swift
//  Nextflix_Sample
//
//  Created by 김승찬 on 2021/09/15.
//

import UIKit

struct Content: Decodable {
    let sectionType: SectionType
    let sectionName: String
    let contentItem : [Item]
    
    enum SectionType: String, Decodable {
        case basic
        case main
        case large
        case rank
        
        var identifier: String {
            switch self {
            case .basic:
                return "ContentCollecionViewCell"
            case .main:
                return "ContentCollectionViewMainCell"
            case .large:
                return "ContentCollecionViewLargeCell"
            case .rank:
                return "ContentCollecionViewRankCell"
            }
        }
    }
}

struct Item: Decodable {
    let description: String
    let imageName: String
    
    // asset에 있는 poster
    // String 에서 바로 Image로 변환
    // 옵셔널 처리 만약에 없으면 UIImage() 처리
    var image: UIImage {
        return UIImage(named: imageName) ?? UIImage()
    }
}
