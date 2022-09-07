//
//  View3Controller.swift
//  Singleton pattern
//
//  Created by mac on 2022/09/07.
//

import Foundation
import UIKit

class View3Controller: UIViewController {
    let info = MyInfo.shared

    @IBOutlet weak var VC3Label1: UILabel!
    @IBOutlet weak var VC3Label2: UILabel!
    @IBOutlet weak var VC3Label3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        info.male = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let str = info.name {
            VC3Label1.text = "MyInfo name \(str)"
        }else {
            VC3Label1.text = "MyInfo name => nil"
        }
        
        if let int = info.age {
            VC3Label2.text = "MyInfo age \(int)"
        }else {
            VC3Label2.text = "MyInfo age => nil"
        }
        
        if let bool = info.male {
            VC3Label3.text = "MyInfo male \(bool)"
        }else {
            VC3Label3.text = "MyInfo male => nil"
        }
    }
}
