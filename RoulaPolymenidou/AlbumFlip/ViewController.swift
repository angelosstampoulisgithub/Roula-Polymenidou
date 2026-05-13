//
//  ViewController.swift
//  Roula Polumenidou
//
//  Created by Angelos Staboulis on 9/12/25.
//

import UIKit

class ViewController: UIViewController {
    var mainImageView = UIImageView()
    var imageArray: [UIImage] = []
    var pageIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageArray = [
            UIImage(named: "1-thumb")!,
            UIImage(named: "2-thumb")!,
            UIImage(named: "3-thumb")!
        ]
        
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height - 180
        
        mainImageView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        view.addSubview(mainImageView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mainImageView.image = imageArray[pageIndex]
    }
}
