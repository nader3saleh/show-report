//
//  ProductionListCell.swift
//  ShowReport
//
//  Created by Scott Matthewman on 08/06/2019.
//  Copyright © 2019 Scott Matthewman. All rights reserved.
//

import SwiftUI

struct ProductionListCell : View {
    var production: ProductionListViewable

    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading) {
                Text(production.titleText)
                    .allowsTightening(true)
                Text(production.locationText)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text(production.genreText.uppercased())
                .font(.caption)
                .color(.accentColor)
        }
    }
}

#if DEBUG
struct ProductionListCell_Previews : PreviewProvider {
    static var previews: some View {
        ProductionListCell(production: demoProductions[0])
        .padding()
    }

}
#endif
