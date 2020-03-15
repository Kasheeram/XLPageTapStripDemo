//
//  ParentViewController.swift
//  XLPageTapStripDemo
//
//  Created by Kashee Kushwaha on 15/03/20.
//  Copyright © 2020 Kashee Kushwaha. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ParentViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        
        // change selected bar color
        settings.style.selectedBarBackgroundColor = .black
        settings.style.buttonBarBackgroundColor = UIColor(red: 222/255, green: 65/255, blue: 27/255, alpha: 1.0)
        settings.style.buttonBarItemBackgroundColor = UIColor(red: 222/255, green: 65/255, blue: 27/255, alpha: 1.0)
            
        settings.style.selectedBarBackgroundColor = .white
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 10
        settings.style.buttonBarRightContentInset = 10
//        settings.style.button
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .white
            newCell?.label.textColor = .white
        }
        super.viewDidLoad()
        title = "Syndicate"

        // Do any additional setup after loading the view.
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
           let child_1 = LEVAboutController()
           let child_2 = LEVInvThesisController()
           let child_3 = LEVDealsParticipatedController()
           return [child_1, child_2, child_3]
       }

}
