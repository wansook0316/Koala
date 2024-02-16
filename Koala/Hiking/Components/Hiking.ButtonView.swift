//
//  Hiking.ButtonView.swift
//  Koala
//
//  Created by Choiwansik on 2/16/24.
//

import SwiftUI

extension Hiking {

    internal struct ButtonView: View {
        
        internal var body: some View {
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                .colorGreenLight,
                                .colorGreenMedium
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                Circle()
                    .stroke(
                        LinearGradient(
                            colors: [
                                .colorGrayLight,
                                .colorGrayMedium
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        ),
                        lineWidth: 4
                    )
                Image(systemName: "figure.hiking")
                    .fontWeight(.black)
                    .font(.system(size: 30))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                .colorGrayLight,
                                .colorGrayMedium
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
            }
            .frame(width: 58, height: 58)
        }

    }

}

#Preview {
    Hiking.ButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
