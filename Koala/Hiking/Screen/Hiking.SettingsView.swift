//
//  Hiking.SettingsView.swift
//  Koala
//
//  Created by Choiwansik on 2/19/24.
//

import SwiftUI

extension Hiking {
    
    internal struct SettingsView: View {
        
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
