//
//  Custom.swift
//  miniProject
//
//  Created by Duc on 6/14/21.
//

import UIKit

class Custom: UITableViewCell{
    @IBOutlet weak var check: UIButton!
    
   var box = false

    override func awakeFromNib() {
        super.awakeFromNib()
   
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     
    }
    
    @IBAction func btnCheck(_ sender: UIButton) {
        if (box == false)
        {
            sender.setBackgroundImage((UIImage(named: "check2")), for: UIControl.State.normal)
            box = true
        }
        else{
            sender.setBackgroundImage((UIImage(named: "check")), for: UIControl.State.normal)
            box = false
        }
    }
}
