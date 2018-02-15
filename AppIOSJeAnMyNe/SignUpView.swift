//
//  SignUpView.swift
//  AppIOSJeAnMyNe
//
//  Created by Jeremy Noh on 15/02/2018.
//  Copyright © 2018 Jeremy Noh. All rights reserved.
//

import UIKit

class SignUpView: UIView {

    @IBOutlet var signUpView : UIView!
    @IBOutlet var label : UILabel!
    @IBOutlet var labelEmail : UILabel!
    @IBOutlet var labelPassword : UILabel!
    @IBOutlet var labelConfirmPassword : UILabel!
    @IBOutlet var labelNotYet : UILabel!
//    @IBOutlet var buttonLogin : UIButton?
//    @IBOutlet var buttonSignUp : UIButton?
    @IBOutlet var inputEmail : UITextField?
    @IBOutlet var inputPassword : UITextField?
    @IBOutlet var inputConfirmPassword : UITextField?
    
    var signInViewDelegate: SignInViewDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SignUpView", owner: self, options: nil)
        addSubview(signUpView)
        signUpView.frame = self.bounds
        signUpView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
   
    @IBAction func goToLogin(_ sender: Any) {
        self.isHidden = true
        signInViewDelegate?.SignInView()
    }
    

}
