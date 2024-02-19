//
//  Hiking.MotionAnimationView.swift
//  Koala
//
//  Created by Choiwansik on 2/19/24.
//

import SwiftUI

extension Hiking {

    internal struct MotionAnimationView: View {

        // MARK: - Properties

        @State private var randomCircle: Int = Int.random(in: 6...12)
        @State private var isAnimating: Bool = false

        // MARK: - Functions

        internal func randomCoordinate() -> CGFloat {
            .random(in: 0...256)
        }

        internal func randomSize() -> CGFloat {
            CGFloat(Int.random(in: 4...80))
        }

        internal func randomScale() -> CGFloat {
            CGFloat(Double.random(in: 0.1...2.0))
        }

        internal func randomSpeed() -> Double {
            Double.random(in: 0.05...1.0)
        }

        internal func randomDelay() -> Double {
            Double.random(in: 0...2)
        }

        internal var body: some View {
            ZStack {
                ForEach(0...self.randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundStyle(.white)
                        .opacity(0.25)
                        .frame(width: self.randomSize())
                        .position(x: self.randomCoordinate(), y: self.randomCoordinate())
                        .scaleEffect(self.isAnimating ? self.randomScale() : 1)
                        .onAppear(perform: {
                            DispatchQueue.main.asyncAfter(deadline: .now() + DispatchTimeInterval.milliseconds(200)) {
                                withAnimation(
                                    .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                                    .repeatForever()
                                    .speed(self.randomSpeed())
                                    .delay(self.randomDelay())
                                ) {
                                    self.isAnimating = true
                                }
                            }
                        })
                }

            }
            .frame(width: 256, height: 256)
            .mask(Circle())
            .drawingGroup() // single view로 만들고 metal에 넘겨 gpu 사용함.
        }

    }

}

#Preview {
    ZStack {
        Hiking.MotionAnimationView()
            .background(
                Circle()
                    .fill(.teal)
            )
    }

}
