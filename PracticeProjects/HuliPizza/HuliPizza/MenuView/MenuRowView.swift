//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Adrian Gutierrez on 9/27/21.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing : 15){
            Image("1_100w")
                // .border(Color("G4"), width: 4)
                // .cornerRadius(10)
                .clipShape(Capsule())
                
                .shadow(color: .black.opacity(0.5), radius: 5, x: 5, y: 5)
            VStack (alignment: .leading) {
                Text("Huli Chicken Pizza")
                    .font(.title)
                    .fontWeight(.light)
                RatingsView()
            }
            // Spacer()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
            
    }
}


