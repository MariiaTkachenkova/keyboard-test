//
//  SettingsViews.swift
//  KeyboardTest
//
//  Created by Maria Tkachenkova on 26.08.2023.
//

import SwiftUI

struct PullView: View {
    
    @State var num1: String = ""
    @State var num2: String = ""
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Rectangle()
                .frame(minWidth: 342, idealWidth: 342, maxWidth: 342, minHeight: 150, idealHeight: 178, maxHeight: 178, alignment: .center)
                .foregroundColor(.white)
            
            VStack {
                HStack {
                    Text("Title One")
                        .bold()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                        .padding(.leading, 15)
                    
                    Spacer()
                    
                    Image(systemName: "info.circle.fill")
                        .scaledToFill()
                        .frame(alignment: .trailing)
                        .padding(.trailing, 15)
                    
                }
                .frame(maxWidth: 342, maxHeight: 50)
                .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                .background(Rectangle()
                    .foregroundColor(Color(red: 230/255, green: 234/255, blue: 242/255))
                    .opacity(0.5))
                
                HStack(alignment: .center) {
                    
                    Text("field1")
                        .foregroundColor(.black)
                    
                    TextField("", value: $num1, formatter: NumberFormatter())
                        .textFieldStyle(DefaultTextFieldStyle())
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: 90, height: 48)
                        .keyboardType(.numberPad)
                        .background(.green)
                    
                    Text("field2")
                        .foregroundColor(.black)
                    
                    TextField("", value: $num2, formatter: NumberFormatter())
                        .textFieldStyle(DefaultTextFieldStyle())
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: 90, height: 48)
                        .keyboardType(.numberPad)
                        .background(.green)
                }
                .padding(.all, 10)
                
                
            }
        }
       
    }
}


struct RandomView: View {
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Rectangle()
                .frame(minWidth: 342, idealWidth: 342, maxWidth: 342, minHeight: 150, idealHeight: 178, maxHeight: 178, alignment: .center)
                .foregroundColor(.white)
            
            VStack {
                HStack {
                    Text("Title Two")
                        .bold()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                        .padding(.leading, 15)
                    
                    Spacer()
                    
                    Image(systemName: "info.circle.fill")
                        .scaledToFill()
                        .frame(alignment: .trailing)
                        .padding(.trailing, 15)
                    
                }
                .frame(maxWidth: 342, maxHeight: 50)
                .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                .background(Rectangle()
                    .foregroundColor(Color(red: 230/255, green: 234/255, blue: 242/255))
                    .opacity(0.5))
                
                Text("Random settings")
                Text("Subview test")
                
            }
        }
    }
}

struct LanguageView: View {
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Rectangle()
                .frame(minWidth: 342, idealWidth: 342, maxWidth: 342, minHeight: 150, idealHeight: 178, maxHeight: 178, alignment: .center)
                .foregroundColor(.white)
            
            VStack {
                HStack {
                    Text("Title Three")
                        .bold()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                        .padding(.leading, 15)
                    
                    Spacer()
                    
                    Image(systemName: "info.circle.fill")
                        .scaledToFill()
                        .frame(alignment: .trailing)
                        .padding(.trailing, 15)
                    
                }
                .frame(maxWidth: 342, maxHeight: 50)
                .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                .background(Rectangle()
                    .foregroundColor(Color(red: 230/255, green: 234/255, blue: 242/255))
                    .opacity(0.5))
                
                Text("Language settings")
                Text("Subview test")
                
            }
        }
    }
}
