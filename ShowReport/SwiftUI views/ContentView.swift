//
//  ContentView.swift
//  ShowReport
//
//  Created by Scott Matthewman on 08/06/2019.
//  Copyright © 2019 Scott Matthewman. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var productions: [ProductionListViewable] = []
    var body: some View {
        NavigationView {
            ProductionListView(productions: productions)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(productions: demoProductions)
    }
}
#endif
