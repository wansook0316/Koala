//
//  MainListView.swift
//  Koala
//
//  Created by Choiwansik on 2/15/24.
//

import SwiftUI
import SwiftData

internal struct MainListView: View {

    internal let items = [
        Item(name: "아이템 1"),
        Item(name: "아이템 2"),
        Item(name: "아이템 3")
    ]

    internal var body: some View {
        NavigationView {
            List(self.items) { item in
                NavigationLink(destination: DetailView(item: item)) {
                    Text(item.name)
                }
            }
            .navigationTitle("화면 리스트")
        }
    }

}

// 디테일 뷰
struct DetailView: View {
    var item: Item

    var body: some View {
        Text(item.name)
            .navigationTitle(item.name)
    }
}

#Preview {
    MainListView()
}
