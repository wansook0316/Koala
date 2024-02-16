//
//  Hiking.CardView.swift
//  Koala
//
//  Created by Choiwansik on 2/16/24.
//

import SwiftUI

extension Hiking {

    internal struct CardView: View {

        internal var body: some View {
            ZStack {

                Hiking.BackgroundView()

                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color.colorIndigoMedium,
                                    Color.colorSalmonLight
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    Image(.image1)
                        .resizable()
                        .scaledToFit()
                }
            }
            .frame(width: 320, height: 570)
        }

    }
}

#Preview {
    Hiking.CardView()
}
