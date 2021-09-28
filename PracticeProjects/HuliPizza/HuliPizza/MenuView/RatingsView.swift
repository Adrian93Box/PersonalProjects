//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Adrian Gutierrez on 9/27/21.
//

import SwiftUI

struct RatingsView: View {
    // creating a variable for how many stars should be displayed
    var count:Int = 4
    // the following array will describe what type of image will be displayed into ratings
    var rating :[String]{
        // the string used for the image is a number followed by: .circle, so we will pass
        // in the 'count' variable to help write which image we will be using
        let symbolName = "\(count).circle"
        // the following line will create the array, multiplying the symbol name by the count given
        return Array(repeating: symbolName, count:count)
        
    }
    var body: some View {
        HStack {
            // the following loop will display the amount of images (and image type) according to the array 'rating'
            // ErrorHandling - In order for the array to be identifiable we add: id:\.self - this gets rid of the error
            ForEach(rating, id:\.self) { item in
                Image(systemName: item)
                    .font(.headline)
                    .foregroundColor(Color("G4"))
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(count : 5)
    }
}
