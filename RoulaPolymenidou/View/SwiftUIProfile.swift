//
//  SwiftUIProfile.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 13/7/23.
//

import SwiftUI

struct SwiftUIProfile: View {
    var title = "Roula Polymenidou"
    var subtitle = "Web & Graphics Designer"
    var message =
    """
    Hello I am Roula Polymenidou Web and Graphics Designer.This is my application with my personal info,my work etc.Enjoy it.
    """.trimmingCharacters(in: .whitespaces)
    var body: some View {
        ScrollView{
        VStack{
            VStack{
                Text(title).font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                Text(subtitle).font(.title).foregroundColor(.white)
                Image("user").resizable().frame(width: 120.0, height: 120.0, alignment: .center)
                    .cornerRadius(54.0)
            }.frame(width: 360, height: 100, alignment: .top)
            VStack{
                Image("mini").resizable().frame(width: 350.0, height: 350.0, alignment: .bottom)
                Text(message).frame(width: 400.0, height: 100.0, alignment: .bottom)
                    .foregroundColor(.white)
            }.frame(width: 360, height: 355, alignment: .bottom)
            .padding(220)
        }.frame(width:UIScreen.main.bounds.width, height:UIScreen.main.bounds.height - 30, alignment: .top)
                .background(Color(.sRGB, red: 32/255, green: 55/255, blue: 72/255, opacity: 1.0))
     }
   }
}

struct SwiftUIProfile_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIProfile()
    }
}
