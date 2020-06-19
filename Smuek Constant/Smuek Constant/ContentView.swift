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
        guard let m = Double(input1) else { return "Thats not money!" }

        let product = m/11.76
        let pizzas = String(format: "%.2f", product)
        let returnValue = String("you can buy " + pizzas + " pizzas with that much money")
        return returnValue
        //return String(format: "%.2f", product)
    }

    var body: some View {
        //VStack {
        ScrollView(.vertical) {
            VStack(spacing: 10) {
            Image("header")
                .resizable()
                .scaledToFit()
                .colorMultiply(.gray)
                //.padding(4)
                //.frame(alignment: .top)
                .overlay(Text("Smuek Constant"), alignment: .center)
                //.font(.system(.largeTitle, design: .rounded))
                .font(.system(size: 64, design: .rounded))
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
            
            Text("The Smuek constant is a physical constant that represents the relationship between USD and the amount of pizza one can buy.")
                .font(.system(size: 24, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            Text("The Smuek constant is at last check equal to 11.76. If you divide any number of USD by the Smuek constant and then round down you get the number of pizzas that amount of money could buy.")
                .font(.system(size: 24, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            Text("The Smuek constant can be abbreviated by the uppercase Greek letter xi.")
                .font(.system(size: 24, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
            Text("Now for the main attraction")
                .font(.system(size: 24, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
            Text("How many pizzas can be bought")
                .font(.system(size: 40, design: .rounded))
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)

            TextField("Enter an ammount of Money", text: $input1)
                .keyboardType(.numberPad)
                .padding(20)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                //font(Font.system(size: 15, weight: .medium, design: .serif))
                //.textFieldStyle(RoundedBorderTextFieldStyle())
//            TextField("Enter Second Number", text: $input2)
//                .textFieldStyle(RoundedBorderTextFieldStyle())

            Text(calculation)
                .font(.system(size: 24, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            Spacer()
        }
        .background(Color.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
