//
//  SignUpView.swift
//  AppIOSJeAnMyNe
//
//  Created by Jeremy Noh on 15/02/2018.
//  Copyright © 2018 Jeremy Noh. All rights reserved.
//

import UIKit
import Toast_Swift

class SignUpView: UIView {

    var style = ToastStyle()
    @IBOutlet var signUpView : UIView!
    @IBOutlet var label : UILabel!
    @IBOutlet var labelEmail : UILabel!
    @IBOutlet var labelPassword : UILabel!
    @IBOutlet var labelConfirmPassword : UILabel!
    @IBOutlet var labelNotYet : UILabel!
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
            style.backgroundColor = .red
            style.messageColor = .black
            self.signUpView.makeToast("Email or password blank", duration: 2.0, position: .bottom, style: style)
            return
        }
        if(!checkEmail(testStr:inputEmail.text!)){
            style.backgroundColor = .red
            style.messageColor = .black
            self.signUpView.makeToast("Email invalid", duration: 2.0, position: .bottom, style: style)
            return
        }
        if (inputPassword.text == inputConfirmPassword.text){
            StaticUser.instance.user = User(_mail: inputEmail.text!, _password: inputPassword.text!)
//            print("User : \(User.StaticUser!._mail)")
//            print("Pass : \(User.StaticUser!._password)")
            self.isHidden = true
            inputPassword.text=""
            inputConfirmPassword.text=""
            inputEmail.text = ""
            signInViewDelegate?.SignInView()
        }
        else{
            style.backgroundColor = .red
            style.messageColor = .black
            self.signUpView.makeToast("Password invalid", duration: 2.0, position: .bottom, style: style)
        }
    }
    
    func checkEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    

}
