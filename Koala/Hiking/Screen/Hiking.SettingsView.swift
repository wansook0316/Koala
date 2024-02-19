//
//  Hiking.SettingsView.swift
//  Koala
//
//  Created by Choiwansik on 2/19/24.
//

import SwiftUI

extension Hiking {

    internal struct SettingsView: View {

        // MARK: - Properties

        private let alternateAppIcons: [String] = [
            "AppIcon-Koala",
            "AppIcon-MagnifyingGlass",
            "AppIcon-Map",
            "AppIcon-Mushroom",
            "AppIcon-Camera",
            "AppIcon-Backpack",
            "AppIcon-Campfire"
          ]

        internal var body: some View {
            List {
                // MARK: - Section: Header

                Section {
                    HStack {
                        Spacer()

                        Image(systemName: "laurel.leading")
                            .font(.system(size: 80, weight: .black))

                        VStack(spacing: -10) {
                            Text("Hike")
                                .font(.system(size: 66, weight: .black))

                            Text("Editors' Choice")
                                .fontWeight(.medium)
                        }

                        Image(systemName: "laurel.trailing")
                            .font(.system(size: 88, weight: .black))

                        Spacer()
                    }
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                .colorGreenLight,
                                .colorGreenMedium,
                                .colorGreenDark
                            ],
                            startPoint: .top,
                            endPoint: .bottom)
                    )
                    .padding(.top, 8)

                    VStack(spacing: 8) {
                        Text("Where can you find \nperfect tracks?")
                            .font(.title2)
                            .fontWeight(.heavy)

                        Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that tou hope to do again someday. \nFind the best day hikes in the app. ")
                            .font(.footnote)
                            .italic()

                        Text("Dust off the boots! It's time for a walk.")
                            .fontWeight(.heavy)
                            .foregroundStyle(.colorGreenMedium)
                    }
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 16)
                    .frame(maxWidth: .infinity)
                }
                .listRowSeparator(.hidden)

                // MARK: - Section: Icons

                Section {
                    ScrollView(.horizontal){
                        HStack(spacing: 12) {
                            ForEach(self.alternateAppIcons.indices, id: \.self) { item in
                                Button {
                                    print("Icon \(alternateAppIcons[item]) was pressed.")

                                    UIApplication.shared.setAlternateIconName(self.alternateAppIcons[item]) { error in
                                        if error != nil {
                                            print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                                        } else {
                                            print("Success!")
                                        }

                                    }
                                } label: {
                                    Image("\(self.alternateAppIcons[item])-Preview")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .clipShape(.rect(cornerRadius: 16))
                                }
                                .buttonStyle(.borderless)
                            }
                        }
                    }
                    .padding(.top, 12)
                    .scrollIndicators(.hidden)

                    Text("Choose tour favorate app icon from the collection above.")
                        .frame(minWidth: .zero, maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.secondary)
                        .font(.footnote)
                        .padding(.bottom, 12)
                } header: {
                    Text("Alternate Icons")
                }

                // MARK: - Section: About

                Section {
                    Hiking.ListRowView(
                        rowLabel: "Application",
                        rowIcon: "apps.iphone",
                        rowContent: "HIKE",
                        rowTintColor: .blue
                    )

                    Hiking.ListRowView(
                        rowLabel: "Compatibility",
                        rowIcon: "info.circle",
                        rowContent: "iOS,iPadOS",
                        rowTintColor: .red
                    )

                    Hiking.ListRowView(
                        rowLabel: "Technology",
                        rowIcon: "swift",
                        rowContent: "Swift",
                        rowTintColor: .orange
                    )

                    Hiking.ListRowView(
                        rowLabel: "Version",
                        rowIcon: "gear",
                        rowContent: "1.0",
                        rowTintColor: .purple
                    )

                    Hiking.ListRowView(
                        rowLabel: "Developer",
                        rowIcon: "ellipsis.curlybraces",
                        rowContent: "John Doe",
                        rowTintColor: .mint
                    )

                    Hiking.ListRowView(
                        rowLabel: "Designer",
                        rowIcon: "paintpalette",
                        rowContent: "Robert Petras",
                        rowTintColor: .pink
                    )

                    Hiking.ListRowView(
                        rowLabel: "Website",
                        rowIcon: "globe",
                        rowTintColor: .indigo,
                        rowLinkLabel: "Credo Acedemy",
                        rowLinkDestination: "https://credo.academy"
                    )

                } header: {
                    Text("ABOUT THE APP")
                } footer: {
                    HStack {
                        Spacer()
                        Text("Copyright © All right reserved.")
                        Spacer()
                    }
                    .padding(.vertical, 8)
                }
            }

        }
    }

}

#Preview {
    Hiking.SettingsView()
}
