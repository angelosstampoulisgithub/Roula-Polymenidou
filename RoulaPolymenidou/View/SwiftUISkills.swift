//
//  SwiftUISkills.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 13/7/23.
//

import SwiftUI

struct SwiftUISkills: View {
    let skills: [Skill] = [
           Skill(name: "Photoshop", level: 0.95, color: .blue),
           Skill(name: "Illustrator", level: 0.85, color: .orange),
           Skill(name: "HTML5", level: 0.90, color: .red),
           Skill(name: "CSS3", level: 0.80, color: .purple)
       ]

       var body: some View {
           ScrollView {
               VStack(spacing: 30) {

                   // Header
                   VStack(spacing: 10) {
                       Text("Roula Polymenidou")
                           .font(.largeTitle.bold())
                           .foregroundColor(.teal)

                       Text("Web & Graphics Designer")
                           .font(.title3)
                           .foregroundColor(.white.opacity(0.9))

                       Image("user")
                           .resizable()
                           .scaledToFill()
                           .frame(width: 130, height: 130)
                           .clipShape(Circle())
                           .shadow(radius: 10)

                       Text("My Skills")
                           .font(.title.bold())
                           .foregroundColor(.teal)
                           .padding(.top, 10)
                   }
                   .padding(.top, 40)

                   // Skills Cards
                   ForEach(skills) { skill in
                       GlassCard {
                           SkillBar(skill: skill)
                       }
                   }

                   Spacer(minLength: 40)
               }
               .padding(.bottom, 60)
           }
           .background(
               LinearGradient(
                   colors: [
                       Color(red: 32/255, green: 55/255, blue: 72/255),
                       Color(red: 10/255, green: 20/255, blue: 30/255)
                   ],
                   startPoint: .top,
                   endPoint: .bottom
               )
               .ignoresSafeArea()
           )
       }
    
}

struct SwiftUISkills_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISkills()
    }
}
