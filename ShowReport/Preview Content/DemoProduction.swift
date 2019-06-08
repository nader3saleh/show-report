//
//  DemoProduction.swift
//  ShowReport
//
//  Created by Scott Matthewman on 08/06/2019.
//  Copyright © 2019 Scott Matthewman. All rights reserved.
//

import Foundation

struct DemoProduction: ProductionListViewable {
    var id = UUID()
    var titleText: String
    var locationText: String
    var genreText: String

    var hashValue: Int {
        id.hashValue
    }
}

let demoProductions: [DemoProduction] = [
    DemoProduction(titleText: "A Midsummer Night’s Dream", locationText: "Bridge Theatre", genreText: "Shakespeare"),
    DemoProduction(titleText: "Death of a Salesman", locationText: "Young Vic", genreText: "Drama"),
    DemoProduction(titleText: "Rosmersholm", locationText: "Duke of York’s", genreText: "Drama"),
    DemoProduction(titleText: "The Secret Diary of Adrian Mole aged 13¾ – The Musical", locationText: "Ambassadors Theatre", genreText: "Musical"),
    DemoProduction(titleText: "Man of La Mancha", locationText: "London Coliseum", genreText: "Musical"),
    DemoProduction(titleText: "On Your Feet – The Gloria Estefan Musical", locationText: "London Coliseum", genreText: "Musical"),
    DemoProduction(titleText: "Waitress", locationText: "Adelphi Theatre", genreText: "Musical")
]
