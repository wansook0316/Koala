//
//  Hiking.GradientButtonStyle.swift
//  Koala
//
//  Created by Choiwansik on 2/19/24.
//

import SwiftUI

internal struct GradientButton: ButtonStyle {

    internal func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                    LinearGradient(
                        colors: [.colorGrayMedium, .colorGrayLight],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                :
                    LinearGradient(
                        colors: [.colorGrayLight, .colorGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    )
            )
            .clipShape(.rect(cornerRadius: 40))
    }

}
