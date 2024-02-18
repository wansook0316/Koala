//
//  MainListView.swift
//  Koala
//
//  Created by Choiwansik on 2/15/24.
//

import SwiftUI
import SwiftData

internal struct MainListView: View {

    internal var body: some View {
        NavigationView {
            List {
                NavigationLink("Hiking") {
                    Hiking.ContentView()
                }
                NavigationLink("조중현") {
                    CJH.ContentView()
                }
                NavigationLink("최완식") {
                    CWS.ContentView()
                }
            }
            .navigationTitle("화면 리스트")
        }
    }

}

#Preview {
    MainListView()
}
