//
//  page1.swift
//  miniProject
//
//  Created by Duc on 6/7/21.
//

import UIKit

class page1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        
    }
    

 
    @IBAction func skip(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = storyboard.instantiateViewController(withIdentifier: "Login") as! Login
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
}
