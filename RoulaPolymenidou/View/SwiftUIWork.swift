//
//  SwiftUIWork.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 13/7/23.
//

import SwiftUI

struct SwiftUIWork: View {
    var title = "Roula Polymenidou"
    var subtitle = "Web & Graphics Designer"
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Spacer(minLength: 90)
                    VStack{
                        Text(title).font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                        Text(subtitle).font(.title).foregroundColor(.white)
                        Image("user").resizable().frame(width: 120.0, height: 120.0, alignment: .center)
                            .cornerRadius(54.0)
                        Text("Μy Work").font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                    }.frame(width: 360, height: 180, alignment: .center)
                    Spacer(minLength: 30)
                }
                Spacer(minLength: 30)
                ScrollView(.vertical){
                    NavigationLink {
                        ImageDetailsView(imageName: "1-thumb")
                    } label: {
                        Image("1-thumb").frame(width: 180, height: 180, alignment: .center)
                    }
                    NavigationLink {
                        ImageDetailsView(imageName: "2-thumb")
                    } label: {
                        Image("2-thumb").frame(width: 180, height: 180, alignment: .center)
                    }
                    NavigationLink {
                        ImageDetailsView(imageName: "3-thumb")
                    } label: {
                        Image("3-thumb").frame(width: 180, height: 180, alignment: .center)
                    }
                    NavigationLink {
                        ImageDetailsView(imageName: "4-thumb")
                    } label: {
                        Image("4-thumb").frame(width: 180, height: 180, alignment: .center)
                    }
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-120, alignment: .bottom)
                
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .topLeading)
                .background(Color(.sRGB, red: 32/255, green: 55/255, blue: 72/255, opacity: 1.0))
        }
    }
}

struct SwiftUIWork_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIWork()
    }
}
