//
//  SwiftUIView.swift
//  DrinkAPI
//
//  Created by Robert Palmer on 2/7/24.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack{
            NavigationStack{
                NavigationLink {
                    ContentView()
                } label: {
                    Label("Search Cocktails", systemImage: "magnifyingglass")
                }

            }
        }
    }
}

#Preview {
    SearchView()
}
