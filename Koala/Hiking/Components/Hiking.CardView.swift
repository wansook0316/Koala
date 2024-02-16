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

                VStack {

                    // MARK: - HEADER

                    VStack(alignment: .leading) {
                        HStack {
                            Text("Hiking")
                                .fontWeight(.black)
                                .font(.system(size: 52))
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

                            Spacer()

                            Button {
                                print("The button was pressed.")
                            } label: {
                                Hiking.ButtonView()
                            }
                        }
                        Text("Func and enjoyazble outdoor activity for friends and famiulies.")
                            .multilineTextAlignment(.leading)
                            .italic()
                            .foregroundStyle(.colorGrayMedium)
                    }
                    .padding(.horizontal, 30)

                    // MARK: - MAIN CONTENT

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

                    // MARK: - FOOTER

                }
            }
            .frame(width: 320, height: 570)
        }

    }
}

#Preview {
    Hiking.CardView()
}
