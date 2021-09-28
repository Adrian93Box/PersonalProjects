//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Adrian Gutierrez on 9/27/21.
//

import SwiftUI

struct OrderRowView: View {
    var body: some View {
        HStack (alignment: .firstTextBaseline){
            Text("Your order item Here")
                .font(.headline)
            Spacer()
            Text("$0.00")
                .fontWeight(.bold)
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView()
            // .environment(\.sizeCategory,.accessibilityExtraExtraExtraLarge)
    }
}
