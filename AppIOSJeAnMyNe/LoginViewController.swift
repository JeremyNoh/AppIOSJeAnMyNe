//
//  LoginViewController.swift
//  AppIOSJeAnMyNe
//
//  Created by Jeremy Noh Antoine Francois on 15/02/2018.
//  Copyright © 2018 Jeremy Noh , Antoine Francois . All rights reserved.
//

import UIKit

class LoginViewController: UIViewController , SignInViewDelegate , SignUpViewDelegate {

    
    @IBOutlet weak var containerSignUp: SignUpView!
    @IBOutlet weak var containerSignIn: SignInView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    func SignInView(){
        containerSignIn.isHidden = false
    }
    
    func SignUpView(){
        containerSignUp.isHidden = false
    }
    

}



