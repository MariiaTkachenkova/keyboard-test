//
//  CustomNavBar.swift
//  KeyboardTest
//
//  Created by Maria Tkachenkova on 26.08.2023.
//

import SwiftUI

struct CustomNavBar: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: .infinity, height: 70)
                .background(.mint)
            
            HStack {
                Button("Back") {
                }
                Spacer()
                Text("Heading")
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                Button("Next") {
                }
            }
            .padding(.horizontal)
        }
        .navigationBarHidden(true)
    }
}

struct CustomNavBarContainerPreview<Content: View>: View {
    
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0) {
            CustomNavBar()
            content
        }
    }
}
