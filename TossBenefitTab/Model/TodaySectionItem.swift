//
//  TodaySectionItem.swift
//  TossBenefitTab
//
//  Created by eun-ji on 2023/03/22.
//

import Foundation

struct TodaySectionItem {
    var point: MyPoint
    let today: Benefit
    
    var sectionItems: [AnyHashable]{
        return [point, today]
    }
}

extension TodaySectionItem{
    static let mock = TodaySectionItem(point: MyPoint(point: 0), today: Benefit.walk)
}
