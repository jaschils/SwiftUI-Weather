//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by John Schils on 6/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color("customTeal")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Saline, MI")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("75°")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 50)
                
                HStack(spacing: 25) {
                        WeatherDayView(dayOfWeek: "MON",
                                       imageName: "cloud.sun.fill",
                                       temperature: 72)
                        
                        WeatherDayView(dayOfWeek: "TUE",
                                       imageName: "cloud.sun.fill",
                                       temperature: 75)
                        
                        WeatherDayView(dayOfWeek: "WED",
                                       imageName: "cloud.drizzle.fill",
                                       temperature: 67)
                        
                        WeatherDayView(dayOfWeek: "THR",
                                       imageName: "cloud.sun.fill",
                                       temperature: 69)
                        
                        WeatherDayView(dayOfWeek: "FRI",
                                       imageName: "sun.max.fill",
                                       temperature: 79)
                }
                
                Spacer() //fills remaining space
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("\(temperature)")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
