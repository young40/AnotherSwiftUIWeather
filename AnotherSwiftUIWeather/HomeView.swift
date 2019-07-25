//
//  ContentView.swift
//  AnotherSwiftUIWeather
//
//  Created by 杨世玲 on 2019/7/21.
//  Copyright © 2019 杨世玲. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Text("Hello Weather")
            }
            .navigationBarTitle("Weather")
            .navigationBarItems(trailing: addCityButton)
        }
    }
    
    private var addCityButton: some View {
        Button(action: {
            withAnimation {
                self.isPresented.toggle()
            }
        }) {
            Image(systemName: "plus.circle.fill")
        }
        .sheet(isPresented: $isPresented) {
            AddCityView(isPresented: self.$isPresented)
        }
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
