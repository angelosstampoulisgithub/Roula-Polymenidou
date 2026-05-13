//
//  Gallery.swift
//  Roula Polumenidou
//
//  Created by Angelos Staboulis on 9/12/25.
//

import SwiftUI

struct Gallery: View {
    var body: some View {
        GeometryReader{ reader in
            VStack{
                Color.black.overlay {
                    PageCurl()
                }
            }
            .frame(width:reader.size.width,height: reader.size.height)
        }
    }
}
