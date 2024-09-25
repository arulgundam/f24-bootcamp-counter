//
//  ContentView.swift
//  counter
//
//  Created by Arul Gundam on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    @State private var maxCount = 10
    
    let buttonFontSize: CGFloat = 90
    let titleFontSize: CGFloat = 50
    let textColor: Color = .white
    
    var percentFull: Double {
        Double(count) / Double(maxCount)
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Color.red
                    .ignoresSafeArea()
                    .opacity(percentFull)
    
                VStack {
                    HStack {
                        Text("\(count) People")
                        
                        Spacer()
                        
                        NavigationLink {
                            SettingsView(maxCount: $maxCount)
                        } label: {
                            Image(systemName: "gear")
                        }
                    }
                    .font(.system(size: titleFontSize))
                    .foregroundStyle(textColor)
                    .padding()
                    
                    Spacer()
                    
                    HStack {
                        Button {
                            if count > 0 {
                                count -= 1
                            }
                        } label: {
                            Image(systemName: "minus")
                        }
                        
                        Spacer()
                        
                        Button {
                            if count < maxCount {
                                count += 1
                            }
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                    .font(.system(size: buttonFontSize))
                    .foregroundStyle(textColor)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 40)
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
