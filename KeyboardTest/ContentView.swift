//
//  ContentView.swift
//  KeyboardTest
//
//  Created by Maria Tkachenkova on 26.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        CustomNavBarContainerPreview {
            
            ZStack {
                Color(.purple)
                    .opacity(0.4)
                    .ignoresSafeArea(.all)
                
                VStack(alignment: .center) {
                    //view with textfield
                    PullView()
                    
                    RandomView()
                    
                    LanguageView()
                    
                    Button {
                        //action
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(.cyan)
                                .frame(minWidth: 300, idealWidth: 340, maxWidth: 340, minHeight: 70, idealHeight: 85, maxHeight: 85, alignment: .center)
                            Text("Accept Settings")
                                .font(Font.custom("Ubuntu-Regular", size: 24))
                                .foregroundColor(.white)
                        }
                        .padding(.vertical, 10)
                    }

                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                //using this isn't prevent the view from pusing up
                .ignoresSafeArea(.keyboard, edges: .bottom)
            }
            .onTapGesture {
                dismissKeyboard()
            }
            
        }

    }
    
    func dismissKeyboard() {
        UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.endEditing(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



