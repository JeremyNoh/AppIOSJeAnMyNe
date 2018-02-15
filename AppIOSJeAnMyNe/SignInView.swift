//
//  SignInView.swift
//  AppIOSJeAnMyNe
//
//  Created by Jeremy Noh on 15/02/2018.
//  Copyright © 2018 Jeremy Noh. All rights reserved.
//

import UIKit

class SignInView: UIView {



    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBOutlet var signInView : UIView!
    @IBOutlet var label : UILabel!
    @IBOutlet var labelEmail : UILabel!
    @IBOutlet var labelPassword : UILabel!
    @IBOutlet var labelNotYet : UILabel!
    @IBOutlet var buttonLogin : UIButton?
    @IBOutlet var inputEmail : UITextField?
    @IBOutlet var inputPassword : UITextField?
    var signUpViewDelegate: SignUpViewDelegate!
    
    
    
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
//        signInView.isHidden = true
    }
    
    @IBAction func gotoSignUp(_ sender: Any) {
        
        self.isHidden = true
        signUpViewDelegate?.SignUpView()
    }

}
