//
//  SwiftUIResume.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 13/7/23.
//

import SwiftUI

struct SwiftUIResume: View {
    var title = "Roula Polymenidou"
    var subtitle = "Web & Graphics Designer"
    var message =
    """
    I am a very experienced and innovative web and graphics designer. I know how to make pages pop. I can take a conceptual idea and factor in all of the client requirements and wishes to build a website they will truly love. I have a keen interest in graphical design and can make images from scratch, as well as utilising client’s stock images.
    Highly Competent.
    Sensible and practical.
    Approachable and Friendly.
    Helpful and Handy.
    Highly organised.
    Intuitive.
    Knowledgeable.
    Flexible.
    Adaptable.
    """.trimmingCharacters(in: .whitespaces)
    var body: some View {
        ScrollView{
            VStack{
                Text(title).font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                Text(subtitle).font(.title).foregroundColor(.white)
                Text("Μy Resume").font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                Image("user").resizable().frame(width: 150.0, height: 150.0, alignment: .center)
                    .cornerRadius(84.0)
                TypewriterText(text: message, speed: 0.02)
                                   .foregroundColor(.white)
                                   .frame(width: 350, alignment: .topLeading)
                
            }.frame(width:UIScreen.main.bounds.width, height:UIScreen.main.bounds.height - 30, alignment: .top)
                .background(Color(.sRGB, red: 32/255, green: 55/255, blue: 72/255, opacity: 1.0))
        }
    }
}

struct TypewriterText: View {
    let text: String
    let speed: Double
    
    @State private var displayedText = ""
    @State private var index = 0
    
    var body: some View {
        Text(displayedText)
            .onAppear {
                displayedText = ""
                index = 0
                typeNextCharacter()
            }
    }
    
    private func typeNextCharacter() {
        guard index < text.count else { return }
        
        let characters = Array(text)
        displayedText.append(characters[index])
        index += 1
        
        DispatchQueue.main.asyncAfter(deadline: .now() + speed) {
            typeNextCharacter()
        }
    }
}

struct SwiftUIResume_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIResume()
    }
}
