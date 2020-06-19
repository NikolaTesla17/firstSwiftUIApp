//
//  ContentView.swift
//  Smuek Constant
//
//  Created by Nayan Smuek on 6/19/20.
//  Copyright © 2020 Nayan Smuek. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var input1: String = ""
//    @State var input2: String = ""

    var calculation: String {
        //check if both fields have text else no need for message
        guard input1.isEmpty == false else { return "" }

        //check if both are numbers else we need to print "Error"
        guard let m = Double(input1) else { return "Error" }

        let product = m/11.76
        return String(format: "%.2f", product)
    }

    var body: some View {
        VStack {
            TextField("Enter an ammount of Money", text: $input1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
//            TextField("Enter Second Number", text: $input2)
//                .textFieldStyle(RoundedBorderTextFieldStyle())

            Text(calculation)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
