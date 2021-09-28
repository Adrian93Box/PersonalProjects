//
//  ContentView.swift
//  HuliPizza
//
//  Created by Adrian Gutierrez on 9/27/21.
//

import SwiftUI

struct ContentView: View {
    // Note to self - When state variables are updated, it will automatically trigger a screen refresh
    @State var isMenuDisplayed : Bool = true
    
    var body: some View {
        VStack {
            
            ContentHeaderView()
                .layoutPriority(2)
            
            // The state variable above is toggled when the button is pressed; refreshing the screen and menu
            Button(action: {self.isMenuDisplayed.toggle()}) {
                PageTitleView(title : "Order Pizza", isDisplayingOrders: isMenuDisplayed)
            }
            
            MenuListView()
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView()
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
            // Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            ContentView()
                .colorScheme(.dark)
                .background(Color.black)
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
