//
//  CookieTests.swift
//  CookieFactory
//
//  Created by Abhishek Mishra on 01/01/2017.
//  Copyright © 2017 ASM Technology Ltd. All rights reserved.
//

import XCTest

class CookieTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_GingerbreadCookieType_DoesNotReturnNil() {
        let cookie = Cookie(.gingerbread)
        XCTAssertNotNil(cookie)
    }

    func testInit_ShortbreadCookieType_DoesNotReturnNil() {
        let cookie = Cookie(.shortbread)
        XCTAssertNotNil(cookie)
    }
    
    func testInit_ChocolateChipCookieType_DoesNotReturnNil() {
        let cookie = Cookie(.chocolateChip)
        XCTAssertNotNil(cookie)
    }
 
    func testInit_GingerbreadCookieType_SetsCookieTypeIvarCorrectly() {
        let cookie = Cookie(.gingerbread)
        XCTAssertEqual(cookie.type, .gingerbread)
    }
    
    func testInit_ShortbreadCookieType_SetsCookieTypeIvarCorrectly() {
        let cookie = Cookie(.shortbread)
        XCTAssertEqual(cookie.type, .shortbread)
    }
    
    func testInit_ChocolateChipCookieType_SetsCookieTypeIvarCorrectly() {
        let cookie = Cookie(.chocolateChip)
        XCTAssertEqual(cookie.type, .chocolateChip)
    }
    
}
