//
//  ProductionDetailViewable.swift
//  ShowReport
//
//  Created by Scott Matthewman on 08/06/2019.
//  Copyright © 2019 Scott Matthewman. All rights reserved.
//

protocol ProductionDetailViewable {
    var hashValue: Int { get }
    var titleText: String { get }
    var locationText: String { get }
    var genreText: String { get }
}
