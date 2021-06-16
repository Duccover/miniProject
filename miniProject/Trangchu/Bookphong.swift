//
//  Bookphong.swift
//  miniProject
//
//  Created by Duc on 6/9/21.
//

import UIKit

class Bookphong: UIViewController,PopupDelegate,popupSuccess,popupChon {
   
    
  
   
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var btn: UIButton!
    {
        didSet{
            btn.layer.cornerRadius = 15
        }
    }
    
    @IBOutlet weak var txttieude: UITextField!
    @IBOutlet weak var txtmota: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    
    func closeTap(_ chuoi: String, chuoi2:String) {
        lbl1.text = chuoi
        lbl2.text = chuoi2
        
        self.dismissPopupViewController(animationType: SLpopupViewAnimationType.Fade)
    }
    func closeTap1() {
        self.dismissPopupViewController(animationType: SLpopupViewAnimationType.Fade)
    }
    func closetap2() {
        self.dismissPopupViewController(animationType: SLpopupViewAnimationType.Fade)
    }
    @IBAction func btntime(_ sender: UIButton) {

        var mypop:ChonTG!
        mypop = ChonTG(nibName: "ChonTG", bundle: nil)
        self.view.alpha = 1.0
        mypop.closePopup = self
        self.presentpopupViewController(popupViewController: mypop, animationType: .BottomTop, completion: {()
            -> Void in
        })
        }
    
    @IBAction func btnChon(_ sender: UIButton) {
        var mypop2:Moithanhvien!
        mypop2 = Moithanhvien(nibName:"Moithanhvien" , bundle: nil)
        self.view.alpha = 1.0
        mypop2.closePopup2 = self
        self.presentpopupViewController(popupViewController: mypop2, animationType: .BottomTop, completion: {()
            ->Void in
        })
        
    }
    
    @IBAction func btnbookphong(_ sender: UIButton) {
        var mypop1:DPTCong!
        mypop1 = DPTCong(nibName: "DPTCong", bundle: nil)
        self.view.alpha = 1.0
        mypop1.closePopup1 = self
        self.presentpopupViewController(popupViewController: mypop1, animationType: .BottomTop, completion: {()
            -> Void in
        })
        }
}
