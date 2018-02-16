//
//  LoginViewController.swift
//  AppIOSJeAnMyNe
//
//  Created by Jeremy Noh Antoine Francois on 15/02/2018.
//  Copyright © 2018 Jeremy Noh , Antoine Francois . All rights reserved.
//

import UIKit
import Toast_Swift

class LoginViewController: UIViewController , SignInViewDelegate , SignUpViewDelegate {

    var style = ToastStyle()
    @IBOutlet weak var containerSignUp: SignUpView!
    @IBOutlet weak var containerSignIn: SignInView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerSignUp.isHidden = true
        containerSignUp.signInViewDelegate = self
        containerSignIn.signUpViewDelegate = self
        style.backgroundColor = .blue
        style.messageColor = .white
        self.containerSignIn.makeToast("Hello", duration: 2.0, position: .center, style: style)
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



