//
//  ContentView.swift
//  Smuek Constant
//
//  Created by Nayan Smuek on 6/19/20.
//  Copyright © 2020 Nayan Smuek. All rights reserved.
//

import SwiftUI
import HGCircularSlider

struct ContentView: View {
    @State var input1: String = ""
    @State private var celsius: Double = 0
//    @State var input2: String = ""

    var calculation: String {
        //check if both fields have text else no need for message
        guard input1.isEmpty == false else { return "Please enter an amount of money" }

        //check if both are numbers else we need to print "Error"
        guard let m = Double(input1) else { return "Thats not money!" }

        let product = m/11.76
        let pizzas = String(format: "%.2f", product)
        let returnValue = String("you can buy " + pizzas + " pizzas with that much money")
        return returnValue
        //return String(format: "%.2f", product)
    }
    //let myFrame = UIScreen.main.bounds

    var body: some View {
        //VStack {
        ScrollView(.vertical) {
            VStack(spacing: 10) {
//            Image("header")
//                .resizable()
//                .scaledToFit()
//                .colorMultiply(.gray)
//                //.padding(4)
//                //.frame(alignment: .top)
//                .overlay(Text("Smuek Constant"), alignment: .center)
//                //.font(.system(.largeTitle, design: .rounded))
//                .font(.system(size: 64, design: .rounded))
//                .foregroundColor(.blue)
//                .multilineTextAlignment(.center)
            
            Text("The Smuek constant is a physical constant that represents the relationship between USD and the amount of pizza one can buy.")
                .font(.system(size: 24, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            Text("The Smuek constant is at last check equal to 11.76. If you divide any number of USD by the Smuek constant and then round down you get the number of pizzas that amount of money could buy.")
                .font(.system(size: 24, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            Text("The Smuek constant can be abbreviated by the uppercase Greek letter xi.")
                .font(.system(size: 24, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                
            Text("Now for the main attraction")
                .font(.system(size: 24, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                
            Text("How many pizzas can be bought")
                .font(.system(size: 40, design: .rounded))
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
                
            HStack {
            Image(systemName: "dollarsign.circle").foregroundColor(.gray)
            TextField("Enter an ammount of money", text: $input1)
                  .textFieldStyle(RoundedBorderTextFieldStyle())
                  .keyboardType(.numberPad)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 2).padding(10))

//            TextField("Enter an ammount of Money", text: $input1)
//                .keyboardType(.numberPad)
//                .padding(20)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                //font(Font.system(size: 15, weight: .medium, design: .serif))
                //.textFieldStyle(RoundedBorderTextFieldStyle())
//            TextField("Enter Second Number", text: $input2)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            //Slider(value: $input1, in: -100...100, step: 0.1)
            //Text("\(celsius) Celsius is \(celsius * 9 / 5 + 32) Fahrenheit")
                //let rect = CGRectMake(0, 0, 100, 100)
                let circularSlider = CircularSlider(frame: rect)
            circularSlider.minimumValue = 0.0
            circularSlider.maximumValue = 1.0
            circularSlider.endPointValue = 0.2
                
                
            Text(calculation)
                .padding(10)
                .font(.system(size: 20, design: .rounded))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 6))
                //.foregroundColor(.white)
                .multilineTextAlignment(.center)
            Spacer()
        }
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
