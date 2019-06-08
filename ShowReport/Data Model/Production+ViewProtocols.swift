//
//  Production+ViewProtocols.swift
//  ShowReport
//
//  Created by Scott Matthewman on 08/06/2019.
//  Copyright © 2019 Scott Matthewman. All rights reserved.
//

extension Production: ProductionCellViewable, ProductionDetailViewable {
    var titleText: String {
        title ?? "(no title set)"
    }

    var locationText: String {
        venue?.name ?? "(no location set)"
    }

    var genreText: String {
        genre?.name ?? "—"
    }
}
