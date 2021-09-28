//
//  MenuListView.swift
//  HuliPizza
//
//  Created by Adrian Gutierrez on 9/27/21.
//

import SwiftUI

struct MenuListView: View {
    
    // This variable will hold the list of all pizzas for the menu, it is being pulled from the MenuModal.swift file
    var menuList = MenuModel().menu
    
    var body: some View {
        VStack {
            ListHeaderView(text: "Menu")
            
            List (menuList) { item in
                MenuRowView(menuItem: item)
                    .listRowInsets(EdgeInsets())
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}




