//
//  ProductionListView.swift
//  ShowReport
//
//  Created by Scott Matthewman on 08/06/2019.
//  Copyright © 2019 Scott Matthewman. All rights reserved.
//

import SwiftUI

struct ProductionListView : View {
    var productions: [ProductionListViewable]

    var body: some View {
        List(productions.identified(by: \.hashValue)) { production in
            VStack(alignment: .leading) {
                Text(production.titleText)
                    .allowsTightening(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                Text(production.locationText)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .navigationBarTitle(Text("Productions"))
    }
}

// MARK: - Preview

#if DEBUG
struct ProductionListView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProductionListView(productions: demoProductions)
        }
    }
}
#endif
