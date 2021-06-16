//
//  Moithanhvien.swift
//  miniProject
//
//  Created by Duc on 6/11/21.
//

import UIKit

protocol popupChon{
    func closetap2()
}
class Moithanhvien: UIViewController,UITableViewDelegate,UITableViewDataSource {
 
    
    @IBOutlet weak var txttimkiem: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btn:UIButton!{
        didSet{
            btn.layer.cornerRadius = 10
        }
    }
    var arr = ["1"]

    
    var closePopup2:popupChon?
    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as? Custom else {
            return UITableViewCell()
        }
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
   

    private func initView() {
        tableView.register(UINib(nibName: "Custom", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    @IBAction func btnExit(_ sender: Any) {
        self.closePopup2?.closetap2()
    }
    
    @IBAction func btnDongy(_ sender: Any) {
        
    }
}
