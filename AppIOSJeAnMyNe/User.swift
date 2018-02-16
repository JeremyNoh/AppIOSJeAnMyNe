//
//  User.swift
//  AppIOSJeAnMyNe
//
//  Created by Jeremy Noh on 15/02/2018.
//  Copyright © 2018 Jeremy Noh. All rights reserved.
//

import Foundation


class User {
    var email:String
    var password:String
//    static let StaticUser:User? = User()
    
    init(email  : String , password : String) {
        self.email = email
        self.password = password
    }
//    func setUser(mail:String,password:String){
//        email = mail
//        password = password
//    }
    
}
