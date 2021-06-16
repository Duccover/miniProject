//
//  ViewController.swift
//  miniProject
//
//  Created by Duc on 6/5/21.
//

import UIKit
import SCLAlertView

class Login: UIViewController {
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtMatkhau: UITextField!
    @IBOutlet weak var btn: UIButton!
    {
        didSet{
            btn.layer.cornerRadius = 10
        }
    }
    
    var iconclick = false
    let imageicon  = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        
        
        imageicon.image = UIImage(named: "close")
        let contenview = UIView()
        contenview.addSubview(imageicon)
        contenview.frame = CGRect(x: 0, y: 0, width: UIImage(named: "close")!.size.width, height:UIImage(named: "close")!.size.height )
        imageicon.frame = CGRect(x: 170, y:85 , width: 30, height: 30)
        txtMatkhau.rightView = contenview
        txtMatkhau.rightViewMode = .always
        let tap = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tap:)))
        imageicon.isUserInteractionEnabled = true
        imageicon.addGestureRecognizer(tap)
        
    }
    
    @objc func imageTapped (tap: UITapGestureRecognizer)
    
    {
        let tapImage = tap.view as! UIImageView
        if iconclick{
            iconclick = false
            tapImage.image = UIImage(named: "open")
            txtMatkhau.isSecureTextEntry = false
        }
        else{
            iconclick = true
            tapImage.image = UIImage(named: "close")
            txtMatkhau.isSecureTextEntry = true
        }
        
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        guard let email = txtEmail.text , txtEmail.text?.count != 0
        else {
            
            SCLAlertView().showError("Thông báo", subTitle: "Email hoặc Password không được để trống!")
            return
        }
        guard let matkhau = txtMatkhau.text , txtMatkhau.text?.count != 0
        else {
            
            SCLAlertView().showError("Thông báo", subTitle: "Email hoặc Password không được để trống!")
            return
        }
        
        
        if txtEmail.text == "quynhdd@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "anhbtn@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "phongdx@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "huongnt@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "hant@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "maint@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "hoant@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "thuytt@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "huent@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "hongct@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "hieupa@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "khanhnhq@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "tungbq@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "dund@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "hiepnh@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "sonpn@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "quyetpv@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "sinhpv@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "lampv@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "baopt@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "toanlt@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "datnb@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "sonnt2@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "tungtd1@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "tuannh@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "dupt@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "namnt@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "longtq@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "sontn@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "sangtq@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "namnp2@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "diennv@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "cuongnm@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "ducth@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
            || txtEmail.text == "sonbn@ttc-solutions.com.vn" && txtMatkhau.text == "12345678"
        
            
        {
            SCLAlertView().showSuccess("Thông báo", subTitle: "Đăng nhập thành công!" )
//            let vc:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc1 = vc.instantiateViewController(withIdentifier: "db1") as! ViewController3
//            self.navigationController?.pushViewController(vc1, animated: true)
        }
        else{
            SCLAlertView().showError("Thông báo", subTitle: "Email và Password chưa chính xác hoặc không tồn tại!")
        }
        
    }
}








