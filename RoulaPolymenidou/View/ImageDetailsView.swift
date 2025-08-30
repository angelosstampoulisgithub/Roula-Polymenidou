//
//  ImageDetailsView.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 30/8/25.
//

import SwiftUI

struct ImageDetailsView: View {
    @State var imageName:String
    var body: some View {
            Image(imageName).resizable()
                .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height-200)
                .navigationTitle(imageName)
                .navigationBarTitleDisplayMode(.inline)
    }
}

