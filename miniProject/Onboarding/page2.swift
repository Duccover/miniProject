//
//  Home.swift
//  miniProject
//
//  Created by Duc on 6/7/21.
//

import UIKit

class page2: UIViewController {
    @IBOutlet weak var btn: UIButton!{
        didSet{
            btn.layer.cornerRadius = 25
            
          
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        navigationController?.navigationBar.isHidden = true
    
    }
        
    @IBAction func btnSkip(_ sender: Any) {
        let story:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let balanceViewController = story.instantiateViewController(withIdentifier: "Login") as! Login
        self.navigationController?.pushViewController(balanceViewController, animated: true)
    }
    
}
