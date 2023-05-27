//
//  Model.swift
//  ServoController
//
//  Created by Stjepan Stojčević on 26.04.2023..
//

import SwiftUI
import CoreBluetooth


struct Model: View {
    
    @State var value : Double = 0
    let centralManager = CBCentralManager()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.3), Color.green]), startPoint: .top, endPoint: .bottom)
                            .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text("Bluetooth Servo Motor Controller").font(.title).bold()
                Spacer()
                Slider(value: $value, in: 0...360).accentColor(.black)
    
                Spacer()
                VStack(spacing: 20){
                    Button(action: self.set(num: 45.0),label: {Text(" Postavi na  45  stupnjeva ")}).foregroundColor(.green).frame(width: 200, height: 40).background(Color.black)
                        .cornerRadius(10)
                    Button(action: self.set(num:60.0),label: {Text(" Postavi na  60  stupnjeva ")}).foregroundColor(.green).frame(width: 200, height: 40).background(Color.black)
                        .cornerRadius(10)
                    Button(action: self.set(num: 90.0),label: {Text(" Postavi na  90  stupnjeva ")}).foregroundColor(.green).frame(width: 200, height: 40).background(Color.black)
                        .cornerRadius(10)
                    Button(action: self.set(num:180.0),label: {Text(" Postavi na 180 stupnjeva")}).foregroundColor(.green).frame(width: 200, height: 40).background(Color.black)
                        .cornerRadius(10)
                }
                Spacer()
                Spacer()
                Text("Okreni servo motor za \(value, specifier: "%.f") stupnjeva").font(.title2).bold()
                Spacer()
            }
        }
    }
    func set(num: Double) -> () -> Void
    {
        return {value=num}
    }
}

            

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Model()
    }
}
