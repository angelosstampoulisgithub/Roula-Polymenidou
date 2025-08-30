//
//  Html5.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 28/8/25.
//

import SwiftUI

struct Html5: View {
    var body: some View {
            Canvas{context,size in
                var path = Path()
                path.addEllipse(in: CGRect(x: 10.0, y: 60.0, width:150.0, height: 145.0))
                context.fill(path, with: .color(.red))
                path.addRect(CGRect(x: 90.0, y: 125, width: 300.0, height: 25.0))
                context.fill(path, with: .color(.red))
                context.drawLayer { ctx in
                    let illustrator = Text("HTML5").foregroundColor(.white)
                    ctx.draw(illustrator, at: CGPoint(x: 260, y: 134))
                    
                }
            }
        
    }
}

