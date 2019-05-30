//
//  ViewController.swift
//  DataSourceKitSandbox
//
//  Created by Takuma Osada on 2019/05/30.
//  Copyright © 2019 JX PRESS Corporation. All rights reserved.
//

import UIKit
import DataSourceKit
import Instantiate
import InstantiateStandard

final class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var state = AdvancedVenueDetailViewState()
    
    private let dataSource = CollectionViewDataSource<AdvancedVenueDetailViewState.CellDeclaration> {
        CellsDeclaration in
        
        switch CellsDeclaration {
        case .outline(let venue):
            return VenueOutlineCell.makeBinder(value: venue)
        case .sectionHeader(_):
            return SectionHeaderCell.makeBinder(value: title)
        case .review(_):
            return ReviewCell.makeBinder(value: review)
        case .relatedVenue(_):
            return RelatedVenueCell.makeBinder(value: venue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        collectionView.dataSource = dataSource
        dataSource.cellDeclarations = state.cellDeclarations
    }
}
