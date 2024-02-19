//
//  Hiking.CustomCircleView.swift
//  Koala
//
//  Created by Choiwansik on 2/19/24.
//

import SwiftUI

extension Hiking {

    internal struct CircleView: View {

        @State private var isAnimateGradient: Bool = false

        internal var body: some View {
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                .colorIndigoMedium,
                                .colorSalmonLight
                            ],
                            startPoint: self.isAnimateGradient ? .topLeading : .bottomLeading,
                            endPoint: self.isAnimateGradient ? .bottomTrailing : .topTrailing
                        )
                    )
                    .onAppear(perform: {
                        DispatchQueue.main.asyncAfter(deadline: .now() + DispatchTimeInterval.milliseconds(200)) {
                            withAnimation(
                                .linear(duration: 3.0)
                                .repeatForever(autoreverses: true)
                            ) {
                                self.isAnimateGradient.toggle()
                            }
                        }
                    })

                Hiking.MotionAnimationView()
            }
            .frame(width: 256, height: 256)
        }
    }

}

#Preview {
    Hiking.CircleView()
}
