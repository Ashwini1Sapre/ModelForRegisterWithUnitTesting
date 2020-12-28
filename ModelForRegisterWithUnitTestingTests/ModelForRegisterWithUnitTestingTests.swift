//
//  ModelForRegisterWithUnitTestingTests.swift
//  ModelForRegisterWithUnitTestingTests
//
//  Created by Knoxpo MacBook Pro on 28/12/20.
//

import XCTest
@testable import ModelForRegisterWithUnitTesting

class ModelForRegisterWithUnitTestingTests: XCTestCase {

    var sut: RegisterModel!
    let firstName1 = "abc"
    let lastName1 = "xxx"
    let email1 = "abc@gmail.com"
    let passsword1 = "1234"
    let repetePassword1 = "1234"
    
    override func setUp() {
        
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testUserModelStruct_cancreateNewInstance()
    {
       sut = RegisterModel( firstName: firstName1, lastName: lastName1, email: email1, password: passsword1, reapetePassword: repetePassword1)
        
        XCTAssertNotNil(sut)
        
        
        
    }
    
    func testuserModelstruct_passvalidFirstName()
    {
        sut = RegisterModel(firstName: firstName1, lastName: lastName1, email: email1, password: passsword1, reapetePassword: repetePassword1)
        
        XCTAssertTrue(sut.isvalidFirstName())
        
        
        
        
    }
    
    func testUserModelstruct_passnamewithlessminlimit()
    {
        sut = RegisterModel(firstName: "s", lastName: lastName1, email: email1, password: passsword1, reapetePassword: repetePassword1)
        XCTAssertFalse(sut.isvalidFirstName())
        
        
    }
    
    
    
    func testUserModel_LsstName()
    {
        
        sut = RegisterModel(firstName: firstName1, lastName: lastName1, email: email1, password: passsword1, reapetePassword: repetePassword1)
        
        XCTAssertTrue(sut.isValidlastname())
        
    }
    
    func testUserModel_ValidEmail()
    {
     sut = RegisterModel(firstName: firstName1, lastName: lastName1, email: email1, password: passsword1, reapetePassword: repetePassword1)
        
        
        XCTAssertTrue(sut.isvalidEmail())
    
    
    }
    
    func testUserModel_InvalidMailId() {
        
        sut = RegisterModel(firstName: firstName1, lastName: lastName1, email: "abc.com", password: passsword1, reapetePassword: repetePassword1)
        
        XCTAssertFalse(sut.isvalidEmail())
        
        
    }
    
    
    
    func testUserModel_matchpassandRepassFeild(){
        
        sut = RegisterModel(firstName: firstName1, lastName: lastName1, email: email1, password: passsword1, reapetePassword: repetePassword1)
        
        XCTAssertTrue(sut.doPasswordMatch())
        
        
    }
    
    func userModel_DataValidation()
    {
        sut = RegisterModel(firstName: firstName1, lastName: lastName1, email: email1, password: passsword1, reapetePassword: repetePassword1)
        
        XCTAssertTrue(sut.isDataValid())
        
    }
    
    
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
