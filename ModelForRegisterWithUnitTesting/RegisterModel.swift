//
//  RegisterModel.swift
//  ModelForRegisterWithUnitTesting
//
//  Created by Knoxpo MacBook Pro on 28/12/20.
//

import Foundation

struct RegisterModel
{
    
    let firstName: String
    let lastName: String
    let email: String
    let password: String
    let reapetePassword: String
    
    
    
    
    
}


extension RegisterModel
{
    
    func isvalidFirstName() -> Bool {
    
        return firstName.count > 1
    }
    
    
    func isValidlastname() -> Bool {
        return lastName.count > 1
    }
    
   func isvalidEmail() -> Bool
   {
    
    return email.contains("@") && email.contains(".")
   }
    
    func isValidPassword() -> Bool
    {
        return password.count >= 8 && password.count <= 16
    }
    
    func doPasswordMatch() -> Bool
    {
        return password == reapetePassword
        
    }
    
    func isvalidPassword() -> Bool
    {
        
        return isValidPassword() && doPasswordMatch()
        
    }
    
    
    func isDataValid() -> Bool {
        return isvalidFirstName() && isValidlastname() && isValidPassword() && isvalidEmail() && doPasswordMatch()
    }
}
