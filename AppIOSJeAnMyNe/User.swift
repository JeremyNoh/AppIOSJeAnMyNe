//
//  User.swift
//  AppIOSJeAnMyNe
//
//  Created by Jeremy Noh on 15/02/2018.
//  Copyright © 2018 Jeremy Noh. All rights reserved.
//

import Foundation


class User {
    var _mail:String = ""
    var _password:String = ""
    static let StaticUser:User? = User()
    
    func setUser(mail:String,password:String){
        _mail = mail
        _password = password
    }
    
}
