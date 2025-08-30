//
//  SwiftUISkills.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 13/7/23.
//

import SwiftUI

struct SwiftUISkills: View {
    var title = "Roula Polymenidou"
    var subtitle = "Web & Graphics Designer"
    var photoshop = Path()
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    Text(title).font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                    Text(subtitle).font(.title).foregroundColor(.white)
                    Image("user").resizable().frame(width: 120.0, height: 120.0, alignment: .center)
                        .cornerRadius(54.0)
                    Text("Μy Skills").font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                }.frame(width: 360, height: 100, alignment: .top)
                VStack{
                    Photoshop()
                }.frame(height:335)
                VStack{
                    Illustrator()
                }.frame(height:165)
                VStack{
                    Html5()
                }.frame(height:205)
                VStack{
                    CSS3()
                }.frame(height:270)

            }.frame(width:UIScreen.main.bounds.width, height:UIScreen.main.bounds.height + 220, alignment: .top)
                .background(Color(.sRGB, red: 32/255, green: 55/255, blue: 72/255, opacity: 1.0))
        }
    }
}

struct SwiftUISkills_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISkills()
    }
}
