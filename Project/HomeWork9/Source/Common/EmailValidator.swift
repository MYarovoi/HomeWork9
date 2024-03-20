//
//  EmailValidator.swift
//  HomeWork9
//
//  Created by Mykyta Yarovoi on 20.03.2024.
//

import Foundation

class EmailValidator: TextValidator {
    
    override func validate(text: String) -> String? {
        
        if text.isEmpty {
            return "Поле вводу не має бути пустими"
        }
        
        if text.count < 3 {
            return "Кількість символів має бути не менше 3"
        }
        
        if text.count >= 30 {
            return "Кількість символів має бути менше 30"
        }
        
        return nil
    }
}
