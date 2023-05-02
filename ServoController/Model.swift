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
            Color(.systemGreen).edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text("Servo motor degrees").font(.title)
                Slider(value: $value, in: 0...360)
                Text("\(value, specifier: "%.f")")
                Spacer()
            }
        }
    }
    
}

            

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Model()
    }
}
