//
//  Hiking.CardView.swift
//  Koala
//
//  Created by Choiwansik on 2/16/24.
//

import SwiftUI

extension Hiking {

    internal struct CardView: View {

        // MARK: - Properties

        @State private var imageNumber: Int = 1
        @State private var randomNumber: Int = 1
        @State private var isShowingSheet: Bool = false

        // MARK: - FUNCTIONS

        internal func randomImage() {
            print("-- Button was pressed ---")
            print("old image number = \(self.imageNumber)")

            repeat {
                self.randomNumber = Int.random(in: 1...5)
                print("generated \(self.randomNumber)")
            } while self.randomNumber == self.imageNumber

            print("result \(self.imageNumber)")
            self.imageNumber = self.randomNumber
        }

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
                                self.isShowingSheet.toggle()
                            } label: {
                                Hiking.ButtonView()
                            }
                            .sheet(isPresented: $isShowingSheet) {
                                Hiking.SettingsView()
                                    .presentationDragIndicator(.visible)
                                    .presentationDetents([.medium, .large])
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
                        Hiking.CircleView()
                        
                        Image(.init(name: "image-\(self.imageNumber)", bundle: .main))
                            .resizable()
                            .scaledToFit()
                            .animation(.default, value: self.imageNumber)
                    }

                    // MARK: - FOOTER

                    Button {
                        print("Button Pressed")
                        self.randomImage()
                    } label: {
                        Text("Explore More")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .colorGreenLight,
                                        .colorGreenMedium
                                    ], 
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                    }
                    .buttonStyle(GradientButton())
                }
            }
            .frame(width: 320, height: 570)
            .navigationTitle("Hiking")
        }

    }
}

#Preview {
    Hiking.CardView()
}
