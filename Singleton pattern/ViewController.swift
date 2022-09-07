//
//  ViewController.swift
//  Singleton pattern
//
//  Created by mac on 2022/09/07.
//

import UIKit

class ViewController: UIViewController {
    let info = MyInfo.shared

    @IBOutlet weak var VC1Label1: UILabel!
    @IBOutlet weak var VC1Label2: UILabel!
    @IBOutlet weak var VC1Label3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        info.name = "욱승"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let str = info.name {
            VC1Label1.text = "MyInfo name \(str)"
        }else {
            VC1Label1.text = "MyInfo name => nil"
        }
        
        if let int = info.age {
            VC1Label2.text = "MyInfo age \(int)"
        }else {
            VC1Label2.text = "MyInfo age => nil"
        }
        
        if let bool = info.male {
            VC1Label3.text = "MyInfo male \(bool)"
        }else {
            VC1Label3.text = "MyInfo male => nil"
        }
    }
    @IBAction func nextAction(_ sender: Any) {
        guard let pushVC = self.storyboard?.instantiateViewController(identifier: "View2Controller") as? View2Controller else{
            return
        }
        
        self.navigationController?.pushViewController(pushVC, animated: true)
    }
}
