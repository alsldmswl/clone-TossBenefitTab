//
//  TodayBenefitCell.swift
//  TossBenefitTab
//
//  Created by eun-ji on 2023/03/22.
//

import UIKit

class TodayBenefitCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var ctaButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.systemGray.withAlphaComponent(0.3)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10
        self.ctaButton.layer.masksToBounds = true
        self.ctaButton.layer.cornerRadius = 5
    }
    
    
    func configure(item: Benefit) {
        titleLabel.text = item.title
        ctaButton.setTitle(item.ctaTitle, for: .normal)
    }
    
    
}
