//
//  LEVInvThesisController.swift
//  XLPageTapStripDemo
//
//  Created by Kashee Kushwaha on 15/03/20.
//  Copyright © 2020 Kashee Kushwaha. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class LEVInvThesisController: UIViewController, IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "INV.THESIS")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


//    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
//        return IndicatorInfo(title: "Inv.Thesis")
//    }

}
