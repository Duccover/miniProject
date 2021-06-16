//
//  DPTCong.swift
//  miniProject
//
//  Created by Duc on 6/11/21.
//

import UIKit



protocol popupSuccess{
    func closeTap1()
    
    
}
class DPTCong: UIViewController {
  
    @IBOutlet weak var btn: UIButton!
    {
        didSet{
            btn.layer.cornerRadius = 15
        }
    }
    var closePopup1:popupSuccess?
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btnExit(_ sender: Any) {
        self.closePopup1?.closeTap1()
    }
    

    @IBAction func btnAction(_ sender: Any) {
        self.closePopup1?.closeTap1()
        
    }
    
}
