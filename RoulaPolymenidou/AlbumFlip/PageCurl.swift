//
//  PageCurl.swift
//  Roula Polumenidou
//
//  Created by Angelos Staboulis on 9/12/25.
//

import Foundation
import UIKit
import SwiftUI
struct PageCurl:UIViewControllerRepresentable{
    typealias UIViewControllerType = PageViewController
    func makeUIViewController(context: Context) -> PageViewController {
        return PageViewController()
    }
    func updateUIViewController(_ uiViewController: PageViewController, context: Context) {
        
    }
    
    
}
