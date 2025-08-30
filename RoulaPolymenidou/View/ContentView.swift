//
//  ContentView.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 13/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(){
            SwiftUIProfile().tabItem {
                Image("profile")
                Text("Profile")
            }
            SwiftUISkills().tabItem {
                Image("skills")
                Text("Skills")
            }
            SwiftUIWork().tabItem {
                Image("web")
                Text("Work")
            }
            SwiftUIResume().tabItem {
                Image("resume")
                Text("Resume")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
