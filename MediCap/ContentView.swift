//
//  ContentView.swift
//  MediCap
//
//  Created by Sakib Bin Alim on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            TextFieldView(placeholder: "Email", text: $email)
            Spacer()
                .frame(height: 20)
            TextFieldView(placeholder: "Password", text: $password)
        }
        .padding(.horizontal, 20.0)
        
    }
}

struct TextFieldView: View {
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding(EdgeInsets(top: 22, leading: 20, bottom: 22, trailing: 20))
            .background(.gray.opacity(0.1))
            .cornerRadius(10)
    }
}

#Preview {
    ContentView()
}
