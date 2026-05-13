//
//  PageViewController.swift
//  Roula Polumenidou
//
//  Created by Angelos Staboulis on 9/12/25.
//

import UIKit

class PageContentViewController: UIViewController {
    var imageView = UIImageView()
    var image: UIImage?
    var pageIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        imageView.image = image
    }
}
class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    let images: [UIImage] = [
        UIImage(named: "1-thumb")!,
        UIImage(named: "2-thumb")!,
        UIImage(named: "3-thumb")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        let firstVC = viewControllerAt(index: 0)
        setViewControllers([firstVC], direction: .forward, animated: true)
    }
    
    func viewControllerAt(index: Int) -> PageContentViewController {
        let vc = PageContentViewController()
        vc.image = images[index]
        vc.pageIndex = index
        return vc
    }
    
    // MARK: - AFTER
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let vc = viewController as? PageContentViewController else { return nil }
        let index = vc.pageIndex
        
        if index >= images.count - 1 {
               return viewControllerAt(index: 0)
        }
        
        return viewControllerAt(index: index + 1)
    }
    
    // MARK: - BEFORE
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let vc = viewController as? PageContentViewController else { return nil }
        let index = vc.pageIndex
        
        if index <= 0 {
                return viewControllerAt(index: images.count - 1)
        }
        
        return viewControllerAt(index: index - 1)
    }
}
