//
//  CSS3.swift
//  RoulaPolymenidou
//
//  Created by Angelos Staboulis on 29/8/25.
//

import SwiftUI

struct CSS3: View {
    var body: some View {
        Canvas{context,size in
            var path = Path()
            path.addEllipse(in: CGRect(x: 10.0, y: 60.0, width:150.0, height: 145.0))
            context.fill(path, with: .color(.green))
            path.addRect(CGRect(x: 90.0, y: 125, width: 300.0, height: 25.0))
            context.fill(path, with: .color(.green))
            context.drawLayer { ctx in
                let illustrator = Text("CSS3").foregroundColor(.white)
                ctx.draw(illustrator, at: CGPoint(x: 260, y: 134))
                
            }
        }
    }
}

#Preview {
    CSS3()
}
