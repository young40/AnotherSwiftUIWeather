//
//  ApiURL.swift
//  AnotherSwiftUIWeather
//
//  Created by 杨世玲 on 2019/7/26.
//  Copyright © 2019 杨世玲. All rights reserved.
//

import Foundation

class ApiUrl: NSObject {
    struct key {
        static let heApiKey = "a9bddf49dd7e49e381331d8eb5da040a"
    }
    
    static let topCityUrl = "https://search.heweather.net/top?key=\(key.heApiKey)&group=cn"
}
