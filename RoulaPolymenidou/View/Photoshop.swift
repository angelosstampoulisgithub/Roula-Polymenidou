//
//  Photoshop.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 28/8/25.
//

import Foundation
import SwiftUI
struct Photoshop:View{
    var body:some View{
            Canvas{ context,size in
                var path = Path()
                path.addEllipse(in: CGRect(x: 10.0, y: 150.0, width:150.0, height: 145.0))
                context.fill(path, with: .color(.blue))
                path.addRect(CGRect(x: 90.0, y: 215.0, width: 300.0, height: 25.0))
                context.fill(path, with: .color(.blue))
                context.drawLayer { ctx in
                    let illustrator = Text("Photoshop").foregroundColor(.white)
                    ctx.draw(illustrator, at: CGPoint(x: 260, y: 225))
                    
                }
            }
    }
}

