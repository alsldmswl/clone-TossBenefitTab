//
//  ButtonBenefitViewController.swift
//  TossBenefitTab
//
//  Created by eun-ji on 2023/03/22.
//

import UIKit

class ButtonBenefitViewController: UIViewController {
    
    @IBOutlet weak var ctabutton: UIButton!
    @IBOutlet weak var vStackView: UIStackView!
    
    var benefit: Benefit = .today
    var benefitDetails: BenefitDetails = .default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        addGuides()
        ctabutton.setTitle(benefit.ctaTitle, for: .normal)
    }
    
    private func setupUI(){
        ctabutton.layer.masksToBounds = true
        ctabutton.layer.cornerRadius = 5
        navigationItem.largeTitleDisplayMode = .never
    }

    private func addGuides() {
        let guideViews: [BenefitGuideView] = benefitDetails.guides.map { guide in
            let guideView = BenefitGuideView(frame: .zero)
            guideView.icon.image = UIImage(systemName: guide.iconName)
            guideView.title.text = guide.guide
            return guideView
        }
        
        guideViews.forEach { view in
            self.vStackView.addArrangedSubview(view)
            NSLayoutConstraint.activate([
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
        }
    }

}
