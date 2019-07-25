//
//  ApiTopCity.swift
//  AnotherSwiftUIWeather
//
//  Created by 杨世玲 on 2019/7/26.
//  Copyright © 2019 杨世玲. All rights reserved.
//

import Foundation

class ApiTopCity {
    static func getTopCity() {
        guard let url = URL(string: ApiUrl.topCityUrl) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
//                decoder.dataDecodingStrategy =
                
                
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
