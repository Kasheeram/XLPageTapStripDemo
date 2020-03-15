//
//  LEVAboutController.swift
//  XLPageTapStripDemo
//
//  Created by Kashee Kushwaha on 15/03/20.
//  Copyright © 2020 Kashee Kushwaha. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class LEVAboutController: UIViewController, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


   func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "ABOUT")
    }
    
    private func registerCells() {
//        LEVDetailsParticipatedCell
    }

}
