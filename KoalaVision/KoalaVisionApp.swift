//
//  KoalaVisionApp.swift
//  KoalaVision
//
//  Created by Choiwansik on 2/18/24.
//

import SwiftUI

@main
internal struct KoalaVisionApp: App {

    internal var body: some Scene {
        WindowGroup {
            MainListView()
        }.windowStyle(.volumetric)
//        WindowGroup {
//            ContentView()
//        }.windowStyle(.volumetric)
//
//        ImmersiveSpace(id: "ImmersiveSpace") {
//            ImmersiveView()
//        }.immersionStyle(selection: .constant(.full), in: .full)
    }

}

