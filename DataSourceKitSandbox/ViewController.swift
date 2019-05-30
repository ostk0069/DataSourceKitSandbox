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
    
    var venue = Venue(photo: #imageLiteral(resourceName: "Kaminarimon"), name: "Kaminarimon")
    var reviews = [
        Review(authorImage: #imageLiteral(resourceName: "ishkawa"), authorName: "Yosuke Ishikawa", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        Review(authorImage: #imageLiteral(resourceName: "yamotty"), authorName: "Masatake Yamoto", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
    ]
    
    var relatedVenues = [
        Venue(photo: #imageLiteral(resourceName: "Kaminarimon"), name: "Kaminarimon"),
        Venue(photo: #imageLiteral(resourceName: "Kaminarimon"), name: "Kaminarimon"),
        Venue(photo: #imageLiteral(resourceName: "Kaminarimon"), name: "Kaminarimon"),
        Venue(photo: #imageLiteral(resourceName: "Kaminarimon"), name: "Kaminarimon"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

