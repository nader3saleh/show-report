//
//  DemoProduction.swift
//  ShowReport
//
//  Created by Scott Matthewman on 08/06/2019.
//  Copyright © 2019 Scott Matthewman. All rights reserved.
//

import Foundation

struct DemoProduction: Codable {
    var id: Int
    var title: String
    var location: String
    var genre: String
}

extension DemoProduction: ProductionListViewable {
    var hashValue: Int { id.hashValue }
    var titleText: String { title }
    var locationText: String { location }
    var genreText: String { genre }
}

func loadDemoProductions() -> [DemoProduction] {
    guard
        let file = Bundle.main.url(forResource: "productions.json", withExtension: nil)
        else { fatalError("Couldn't load productions JSON from main bundle") }
    let data: Data
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load data from productions JSON")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode([DemoProduction].self, from: data)
    } catch {
        fatalError("Couldn't parse JSON data: \(error)")
    }
}

let demoProductions: [DemoProduction] = loadDemoProductions()
