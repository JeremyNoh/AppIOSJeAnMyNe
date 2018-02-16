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
    @IBOutlet var inputEmail : UITextField!
    @IBOutlet var inputPassword : UITextField!
    @IBOutlet var inputConfirmPassword : UITextField!
    
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
    
    @IBAction func signUp(_ sender: Any) {
        if inputEmail.text == "" || inputPassword.text == "" || inputConfirmPassword.text == "" {
            //            self.contentView.makeToast("Email or password blank")
            print("Email or password blank")
            return
        }
        if(!checkEmail(testStr:inputEmail.text!)){
            //            self.contentView.makeToast("Email invalid")
            print("Email invalid")
            return
        }
        if (inputPassword.text == inputConfirmPassword.text){
            User.StaticUser?.setUser(mail: inputEmail.text!, password: inputPassword.text!)
            print("User : \(User.StaticUser!._mail)")
            print("Pass : \(User.StaticUser!._password)")
            self.isHidden = true
            inputPassword.text=""
            inputConfirmPassword.text=""
            inputEmail.text = ""
            signInViewDelegate?.SignInView()
        }
        else{
            //            self.contentView.makeToast("Password invalid")
            print("Password invalid")
        }
    }
    
    func checkEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    

}
