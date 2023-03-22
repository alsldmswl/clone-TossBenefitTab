//
//  MyPointViewController.swift
//  TossBenefitTab
//
//  Created by eun-ji on 2023/03/22.
//

import UIKit

class MyPointViewController: UIViewController {

    @IBOutlet weak var pointLabel: UILabel!
    
    var point: MyPoint = .default

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.largeTitleDisplayMode = .never
    }

}
