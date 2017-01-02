//
//  Cookie.swift
//  CookieFactory
//
//  Created by Abhishek Mishra on 01/01/2017.
//  Copyright © 2017 ASM Technology Ltd. All rights reserved.
//

import Foundation

enum cookieType {
    case shortbread
    case gingerbread
    case chocolateChip
}

class Cookie : NSObject {
    var type:cookieType
    
    init(_ type:cookieType) {
        self.type = type
        super.init()
    }
}
