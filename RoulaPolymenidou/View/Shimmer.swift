//
//  Shimmer.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 16/5/26.
//

import Foundation
import SwiftUI

struct Shimmer: ViewModifier {
    @State private var phase: CGFloat = 0

    func body(content: Content) -> some View {
        content
            .overlay(
                LinearGradient(
                    gradient: Gradient(colors: [.white.opacity(0), .white.opacity(0.4), .white.opacity(0)]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .rotationEffect(.degrees(20))
                .offset(x: phase)
            )
            .onAppear {
                withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                    phase = 300
                }
            }
    }
}
