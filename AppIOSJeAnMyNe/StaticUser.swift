//
//  StaticUser.swift
//  AppIOSJeAnMyNe
//
//  Created by Jeremy Noh on 15/02/2018.
//  Copyright © 2018 Jeremy Noh. All rights reserved.
//

import Foundation

class StaticUser {
    static let instance: StaticUser = StaticUser()
    var user:User? = nil
}
