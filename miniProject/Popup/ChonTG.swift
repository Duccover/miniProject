//
//  ChonTG.swift
//  miniProject
//
//  Created by Duc on 6/10/21.
//

import UIKit

var chuoi:String = ""
var chuoi2:String = ""
protocol PopupDelegate {
    func closeTap(_ chuoi: String , chuoi2 :String)


}
class ChonTG: UIViewController {
    @IBOutlet weak var textfiel1: UITextField!
    @IBOutlet weak var textfiel2: UITextField!
    @IBOutlet weak var btn: UIButton!
    {
        didSet{
            btn.layer.cornerRadius = 10
        }
    }
    
    
    var closePopup:PopupDelegate?
    let timepicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        let toolbar1  = UIToolbar()
        toolbar1.sizeToFit()
        let toolbar2  = UIToolbar()
        toolbar2.sizeToFit()
        let donebtn1 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneclick1))
        let donebtn2 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneclick2))
        toolbar1.items = [donebtn1]
        toolbar2.items = [donebtn2]
        textfiel1.inputAccessoryView = toolbar1
        textfiel1.inputView = timepicker
        textfiel2.inputAccessoryView = toolbar2
        
        textfiel2.inputView = timepicker
        timepicker.datePickerMode = .time
        timepicker.preferredDatePickerStyle = .wheels
      
    }
    @objc func doneclick1(){
        let format = DateFormatter()
        format.timeStyle = .short
        textfiel1.text = format.string(from:timepicker.date)
        self.view.endEditing(false)
    }
    
    @objc func doneclick2(){
        let format = DateFormatter()
        format.timeStyle = .short
        textfiel2.text = format.string(from:timepicker.date)
        self.view.endEditing(false)
    }

    @IBAction func btnclose(_ sender: UIButton) {
        self.closePopup?.closeTap("", chuoi2: "")
    }
    
    @IBAction func btndongy(_ sender: Any) {
        chuoi = textfiel1.text!
        chuoi2 = textfiel2.text!
        self.closePopup?.closeTap(chuoi,chuoi2: chuoi2)
        
    }

}
