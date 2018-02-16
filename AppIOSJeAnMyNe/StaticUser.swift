//
//  StaticUser.swift
//  AppIOSJeAnMyNe
//
//  Created by Jeremy Noh on 15/02/2018.
//  Copyright © 2018 Jeremy Noh. All rights reserved.
//

import Foundation


//class StaticUser  {
//
//    static let StaticUser:User? = User(_mail: String, _password: String){
//
//    }
//    let user : User = User(_mail: "test@test.com", _password: "test")
//
//
//}

class StaticUser {
    static let instance: StaticUser = StaticUser()
    
    var mail: String = ""
    
    var password: String = ""
    
    func setUser (mail:String,password:String){
        StaticUser.instance.mail = mail
        StaticUser.instance.password = password
    }
}

//StaticUser.instance.name = "Pierre"

