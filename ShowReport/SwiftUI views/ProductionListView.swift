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
            NavigationButton(destination: ProductionDetailView(production: production)) {
                ProductionListCell(production: production)
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
