//
//  MyInfo.swift
//  Singleton pattern
//
//  Created by mac on 2022/09/07.
//

import Foundation

class MyInfo {
    static let shared = MyInfo()
    
    var name : String?
    var age : Int?
    var male : Bool?
    
    private init() { }
}
