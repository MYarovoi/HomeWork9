//
//  SignInModel.swift
//  HomeWork9
//

//

import Foundation

class SignInModel {
    
    weak var delegate: SignInModelDelegate?
    
    var emailValid: Bool = false
    var passwordValid: Bool = false
    
    var email: String = "" {
        
        didSet {

            let validator = EmailValidator()
            let validatorText = validator.validate(text: email)
            
            delegate?.didValidate(errorText: validatorText, textType: .error)
            
            if validatorText == nil {
                
                emailValid = true
            } else {
                emailValid = false
            }
        }
    }
    var password: String = "" {
        
        didSet {

            let validator = PasswordValidator()
            let validatorText = validator.validate(text: password)
            
            delegate?.didValidate(errorText: validatorText, textType: .error)
            
            if validatorText == nil {
                
                passwordValid = true
            } else {
                passwordValid = false
            }
        }
    }
}
