//
//  Hiking.ListRowView.swift
//  Koala
//
//  Created by Choiwansik on 2/19/24.
//

import SwiftUI

extension Hiking {

    internal struct ListRowView: View {

        // MARK: - Properties

        @State internal var rowLabel: String
        @State internal var rowIcon: String
        @State internal var rowContent: String? = nil
        @State internal var rowTintColor: Color
        @State internal var rowLinkLabel: String? = nil
        @State internal var rowLinkDestination: String? = nil

        internal var body: some View {
            LabeledContent {
                if let rowContent {
                    Text(rowContent)
                        .foregroundStyle(.primary)
                        .fontWeight(.heavy)
                } else if let rowLinkLabel, let rowLinkDestination, let url = URL(string: rowLinkDestination) {
                    Link(rowLinkLabel, destination: url)
                      .foregroundColor(.pink)
                      .fontWeight(.heavy)
                } else {
                    EmptyView()
                }
            } label: {
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 30, height: 30)
                            .foregroundStyle(self.rowTintColor)

                        Image(systemName: self.rowIcon)
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                    }
                    Text(self.rowLabel)
                }
            }
        }
    }

}


#Preview {
    List {
        Hiking.ListRowView(
            rowLabel: "Designer",
            rowIcon: "paintpalette",
            rowContent: "John Doe",
            rowTintColor: .pink
        )
        Hiking.ListRowView(
            rowLabel: "Website",
            rowIcon: "globe",
            rowContent: nil,
            rowTintColor: .pink,
            rowLinkLabel: "Credo Academy",
            rowLinkDestination: "https://credo.academy"
        )
    }
}

//struct CustomListRowView: View {
//  // MARK: - PROPERTIES
//
//  @State var rowLabel: String
//  @State var rowIcon: String
//  @State var rowContent: String? = nil
//  @State var rowTintColor: Color
//  @State var rowLinkLabel: String? = nil
//  @State var rowLinkDestination: String? = nil
//
//  var body: some View {
//    LabeledContent {
//      // Content
//      if rowContent != nil {
//        Text(rowContent!)
//          .foregroundColor(.primary)
//          .fontWeight(.heavy)
//      } else if let rowLinkLabel, let rowLinkDestination {
//          Link(rowLinkLabel, destination: URL(string: rowLinkDestination)!)
//            .foregroundColor(.pink)
//            .fontWeight(.heavy)
//      } else {
//        EmptyView()
//      }
//    } label: {
//      // Label
//      HStack {
//        ZStack {
//          RoundedRectangle(cornerRadius: 8)
//            .frame(width: 30, height: 30)
//            .foregroundColor(rowTintColor)
//          Image(systemName: rowIcon)
//            .foregroundColor(.white)
//            .fontWeight(.semibold)
//        }
//
//        Text(rowLabel)
//      }
//    }
//  }
//}
//
//struct CustomListRowView_Previews: PreviewProvider {
//  static var previews: some View {
//    List {
//      CustomListRowView(
//        rowLabel: "Website",
//        rowIcon: "globe",
//        rowContent: nil,
//        rowTintColor: .pink,
//        rowLinkLabel: "Credo Academy",
//        rowLinkDestination: "https://credo.academy"
//      )
//    }
//  }
//}
