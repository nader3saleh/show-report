//
//  ProductionDetailView.swift
//  ShowReport
//
//  Created by Scott Matthewman on 08/06/2019.
//  Copyright © 2019 Scott Matthewman. All rights reserved.
//

import SwiftUI

struct ProductionDetailView : View {
    var production: ProductionDetailViewable

    var body: some View {
        VStack(alignment: .leading) {
            Text(production.genreText.uppercased())
                .color(.accentColor)
                .padding(.bottom)
            Text(production.titleText)
                .font(.title)
                .bold()
                .lineLimit(nil)
            Text(production.locationText)
                .font(.title)
                .color(.secondary)
            Spacer()
        }
            .padding()
            .navigationBarTitle(Text(production.titleText), displayMode: .inline)
    }
}

#if DEBUG
struct ProductionDetailView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProductionDetailView(production: demoProductions[0])
        }
    }
}
#endif
