//
//  ContentView.swift
//  AnotherSwiftUIWeather
//
//  Created by 杨世玲 on 2019/7/21.
//  Copyright © 2019 杨世玲. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var isAddingCity: Bool = false
    
    var body: some View {
        NavigationView {
            addCityButton
            .navigationBarTitle("Weather")
            .navigationBarItems(trailing: addCityButton)
        }
    }
    
    private var addCityButton: some View {
        Button(action: {
            withAnimation {
                self.isAddingCity.toggle()
            }
        }) {
            Image(systemName: "plus.circle.fill")
        }
        .sheet(isPresented: $isAddingCity, onDismiss: {
            self.isAddingCity = false
        }) {
            AddCityView(isPresented: self.$isAddingCity)
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
