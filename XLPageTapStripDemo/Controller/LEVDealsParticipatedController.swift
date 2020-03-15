//
//  LEVDealsParticipatedController.swift
//  XLPageTapStripDemo
//
//  Created by Kashee Kushwaha on 15/03/20.
//  Copyright © 2020 Kashee Kushwaha. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class LEVDealsParticipatedController: UIViewController, IndicatorInfoProvider, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        registerCells()
    }


   func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "DEALS PARTICIPATED IN")
    }
    
    private func registerCells() {
        collectionView.register(LEVDetailsParticipatedCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! LEVDetailsParticipatedCell
        cell.backgroundColor = indexPath.row % 2 == 0 ? UIColor.purple : UIColor.orange
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 150)
    }

}
