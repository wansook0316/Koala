//
//  MainListView.swift
//  KoalaVision
//
//  Created by Choiwansik on 2/18/24.
//

import SwiftUI

internal struct MainListView: View {

    internal var body: some View {
        NavigationView {
            List {
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
