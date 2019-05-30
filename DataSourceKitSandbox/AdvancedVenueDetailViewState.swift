//
//  AdvancedVenueDetailViewState.swift
//  DataSourceKitSandbox
//
//  Created by Takuma Osada on 2019/05/30.
//  Copyright © 2019 JX PRESS Corporation. All rights reserved.
//

import Foundation
import DataSourceKit

struct AdvancedVenueDetailViewState {
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
}

extension AdvancedVenueDetailViewState: CellsDeclarator {
    enum CellDeclaration: Equatable {
        case outline(Venue)
        case sectionHeader(String)
        case review(Review)
        case relatedVenue(Venue)
    }
    
    func declareCells(_ cell: (AdvancedVenueDetailViewState.CellDeclaration) -> Void) {
        cell(.outline(venue))
        
        if !reviews.isEmpty {
            cell(.sectionHeader("Reviews"))
            for review in reviews {
                cell(.review(review))
            }
        }
        
        if !relatedVenues.isEmpty {
            cell(.sectionHeader("Related Venues"))
            for relatedVenue in relatedVenues {
                cell(.relatedVenue(relatedVenue))
            }
        }
    }
}
