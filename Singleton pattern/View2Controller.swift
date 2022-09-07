//
//  View2Controller.swift
//  Singleton pattern
//
//  Created by mac on 2022/09/07.
//

import Foundation
import UIKit

class View2Controller: UIViewController {
    let info = MyInfo.shared

    @IBOutlet weak var VC2Label1: UILabel!
    @IBOutlet weak var VC2Label2: UILabel!
    @IBOutlet weak var VC2Label3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        info.age = 27
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let str = info.name {
            VC2Label1.text = "MyInfo name \(str)"
        }else {
            VC2Label1.text = "MyInfo name => nil"
        }
        
        if let int = info.age {
            VC2Label2.text = "MyInfo age \(int)"
        }else {
            VC2Label2.text = "MyInfo age => nil"
        }
        
        if let bool = info.male {
            VC2Label3.text = "MyInfo male \(bool)"
        }else {
            VC2Label3.text = "MyInfo male => nil"
        }
    }
    @IBAction func nextAction(_ sender: Any) {
        guard let pushVC = self.storyboard?.instantiateViewController(identifier: "View3Controller") as? View3Controller else{
            return
        }
        
        self.navigationController?.pushViewController(pushVC, animated: true)
    }
}
