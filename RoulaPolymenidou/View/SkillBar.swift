//
//  SkillBar.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 16/5/26.
//

import SwiftUI

struct SkillBar: View {
    let skill: Skill
    @State private var animate = false

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(skill.name)
                .font(.headline)
                .foregroundColor(.white)

            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white.opacity(0.15))

                RoundedRectangle(cornerRadius: 12)
                    .fill(skill.color)
                    .frame(width: animate ? UIScreen.main.bounds.width * 0.75 * skill.level : 0)
                    .modifier(Shimmer())
            }
            .frame(height: 14)
        }
        .padding(.vertical, 6)
        .onAppear {
            withAnimation(.easeOut(duration: 1.2)) {
                animate = true
            }
        }
    }
}
