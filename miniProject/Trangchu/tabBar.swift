//
//  tabBar.swift
//  miniProject
//
//  Created by Duc on 6/14/21.
//

import UIKit

class tabBar: UIViewController {
    @IBOutlet weak var viewTab: UIView!
    @IBOutlet weak var content: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designTab()
      
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    func designTab(){
        viewTab.layer.cornerRadius = 15
       
    }

    @IBAction func btnHome(_ sender: UIButton) {
        let tag = sender.tag
        if tag == 2{
            guard let home  = self.storyboard?.instantiateViewController(identifier: "view") as? ViewController
            else {return}
            content.addSubview(home.view)
            home.didMove(toParent: self)
            
        }
    
    }
}


