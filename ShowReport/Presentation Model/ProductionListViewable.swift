//
//  ProductionView.swift
//  ShowReport
//
//  Created by Scott Matthewman on 08/06/2019.
//  Copyright © 2019 Scott Matthewman. All rights reserved.
//

import Foundation

protocol ProductionListViewable {
    var hashValue: Int { get }
    var titleText: String { get }
    var locationText: String { get }
}

extension Production: ProductionListViewable {
    var titleText: String {
        self.title ?? "(no title set)"
    }

    var locationText: String {
        self.venue?.name ?? "(no location set)"
    }
}
