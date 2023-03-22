//
//  MyPoint.swift
//  TossBenefitTab
//
//  Created by eun-ji on 2023/03/22.
//

import Foundation

struct MyPoint: Hashable {
    var point: Int
    
}

extension MyPoint{
    static let `default` = MyPoint(point: 0)
}
