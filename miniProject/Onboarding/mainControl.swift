//
//  mainControl.swift
//  miniProject
//
//  Created by Duc on 6/7/21.
//

import UIKit

class mainControl: UIPageViewController,UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    // MARK: name ViewController
    lazy var orderPageControl:[UIViewController] = {
        return [self.newPageControl(viewController: "pageControl1"),
               self.newPageControl(viewController: "pageControl2")]
    }()
    
    var pagecontrol = UIPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        if let firstViewcontroller  = orderPageControl.first
        {
        setViewControllers([firstViewcontroller],
                           direction: .forward,
                           animated: true,
                           completion: nil)
        }
        self.delegate = self
        configurePagecontrol()
    }
    func configurePagecontrol(){
        pagecontrol = UIPageControl (frame: CGRect(x: 0, y: UIScreen.main.bounds.maxY - 100, width: UIScreen.main.bounds.width, height: 50))
    
        pagecontrol.numberOfPages = orderPageControl.count
        pagecontrol.currentPage = 0
        pagecontrol.tintColor = UIColor.orange
        pagecontrol.pageIndicatorTintColor = UIColor.black
        pagecontrol.currentPageIndicatorTintColor = UIColor.orange
        self.view.addSubview(pagecontrol)
        
    }
    
     // MARK: call Storyboard
    func newPageControl(viewController:String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: viewController)
    }
    
    // MARK: Action
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderPageControl.firstIndex(of:viewController) else {
            return nil
            
        }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else{
            return nil
        }
        
        guard orderPageControl.count > previousIndex else  {
            return nil
        }
        
        return orderPageControl[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderPageControl.firstIndex(of:viewController) else {
            return nil
            
        }
        let nextIndex = viewControllerIndex + 1
        guard orderPageControl.count != nextIndex  else{
            return nil
        }
        
        guard orderPageControl.count > nextIndex else  {
            return nil
        }
        
        return orderPageControl[nextIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        

        let pageconten  = pageViewController.viewControllers![0]
        self.pagecontrol.currentPage = orderPageControl.index(of: pageconten)!
        
    }
}
