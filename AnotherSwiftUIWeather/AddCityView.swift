//
//  AddCityView.swift
//  AnotherSwiftUIWeather
//
//  Created by 杨世玲 on 2019/7/22.
//  Copyright © 2019 杨世玲. All rights reserved.
//

import SwiftUI

struct AddCityView: View {
    var body: some View {
        NavigationView {
            Text("Adding City")
                .navigationBarItems(leading: cancleButtion)
        }
    }
    
    var cancleButtion: some View {
        Button(action: {}) {
            Text("Cancel")
        }
    }
}

#if DEBUG
struct AddCityView_Previews: PreviewProvider {
    static var previews: some View {
        AddCityView()
    }
}
#endif
