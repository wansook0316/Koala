//
//  Hiking.BackgroundView.swift
//  Koala
//
//  Created by Choiwansik on 2/16/24.
//

import SwiftUI

extension Hiking {
    
    internal struct BackgroundView: View {

        internal var body: some View {
            ZStack {
                // MARK: - 3. DEPTH

                Color.colorGreenDark
                    .clipShape(.rect(cornerRadius: 40))
                    .offset(y: 12.0)

                // MARK: - 2. LIGHT

                Color.colorGreenLight
                    .clipShape(.rect(cornerRadius: 40))
                    .offset(y: 3)
                    .opacity(0.85)

                // MARK: - 1. SURFACE

                LinearGradient(
                    colors: [
                        .colorGreenLight,
                        .colorGreenMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .clipShape(.rect(cornerRadius: 40))
            }
        }

    }
}

#Preview {
    Hiking.BackgroundView()
}
