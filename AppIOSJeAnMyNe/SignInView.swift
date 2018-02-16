//
//  SignInView.swift
//  AppIOSJeAnMyNe
//
//  Created by Jeremy Noh on 15/02/2018.
//  Copyright © 2018 Jeremy Noh. All rights reserved.
//

import UIKit
import Toast_Swift

class SignInView: UIView {

    var style = ToastStyle()
    @IBOutlet var signInView : UIView!
    @IBOutlet var label : UILabel!
    @IBOutlet var labelEmail : UILabel!
    @IBOutlet var labelPassword : UILabel!
    @IBOutlet var labelNotYet : UILabel!
    @IBOutlet var buttonLogin : UIButton!
    @IBOutlet var inputEmail : UITextField!
    @IBOutlet var inputPassword : UITextField!
    var signUpViewDelegate: SignUpViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    
    private func commonInit() {
        Bundle.main.loadNibNamed("SignInView", owner: self, options: nil)
        addSubview(signInView)
        signInView.frame = self.bounds
        signInView.autoresizingMask = [.flexibleHeight , .flexibleWidth]
    }
    
    @IBAction func login(_ sender: Any) {
        
        if(StaticUser.instance.user==nil){
                style.backgroundColor = .red
                style.messageColor = .black
            self.signInView.makeToast("Please register first", duration: 2.0, position: .bottom, style: style)
            return
        }
        
        if inputEmail.text == StaticUser.instance.user?._mail && inputPassword.text == StaticUser.instance.user?._password {
            inputEmail.text = ""
            inputPassword.text = ""
            style.backgroundColor = .green
            style.messageColor = .black
            self.signInView.makeToast("Successful login", duration: 2.0, position: .bottom, style: style)
        } else {
            style.backgroundColor = .red
            style.messageColor = .black
            self.signInView.makeToast("no correspondance email password", duration: 2.0, position: .bottom, style: style)
        }

    }
    
    
    @IBAction func gotoSignUp(_ sender: Any) {
        
        self.isHidden = true
        signUpViewDelegate?.SignUpView()
    }

}
