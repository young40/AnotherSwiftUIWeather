//
//  AddCityView.swift
//  AnotherSwiftUIWeather
//
//  Created by 杨世玲 on 2019/7/22.
//  Copyright © 2019 杨世玲. All rights reserved.
//

import SwiftUI

struct AddCityView: View {
    @Binding var isPresented: Bool
    
    @State var search: String = ""
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField("Search City", text: $search) {
                        print("Input: \(self.$search.value)")
                    }
                }
                
                Section {
                    Text("Test 1")
                    Text("Test 2")
                }
            }
            .navigationBarItems(leading: cancleButtion)
            .navigationBarTitle("Add City")
            .listStyle(.grouped)
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
        AddCityView(isPresented: .constant(true))
    }
}
#endif
