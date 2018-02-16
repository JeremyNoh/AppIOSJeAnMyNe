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
        containerSignUp.isHidden = true
        containerSignUp.signInViewDelegate = self
        containerSignIn.signUpViewDelegate = self

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    func SignInView(){
        containerSignIn.isHidden = false
        print("LoginViewController  : containerSignIn.isHidden = false")
    }
    
    func SignUpView(){
        containerSignUp.isHidden = false
        print("LoginViewController  : containerSignUp.isHidden = false")
    }
    

}



