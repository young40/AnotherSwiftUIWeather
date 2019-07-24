//
//  AddCityView.swift
//  AnotherSwiftUIWeather
//
//  Created by 杨世玲 on 2019/7/22.
//  Copyright © 2019 杨世玲. All rights reserved.
//

import SwiftUI

struct AddCityView: View {
//    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            Text("Adding City")
                .navigationBarItems(leading: cancleButtion)
        }
    }
    
    var cancleButtion: some View {
        Button(action: {
            // May be a bug in SwiftUI
            UIApplication.shared.windows[0].rootViewController?.dismiss(animated: true, completion: {})
//            self.isPresented = false
        }) {
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
