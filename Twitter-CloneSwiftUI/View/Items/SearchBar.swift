//
//  SearchBar.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 11/11/22.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack{
            TextField("Search Twitter", text: $text)
                .padding(8)
                .padding(.horizontal,24)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading,8)
                    }
                )
            if isEditing{
                Button(action: {
                    text = ""
                    UIApplication.shared.endEditing()
                    withAnimation {
                        self.isEditing = false
                    }
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.gray)
                })
                .foregroundColor(.black)
                .transition(.move(edge: .trailing))
            }
        }
        .cornerRadius(13)
        .onTapGesture {
            withAnimation {
                isEditing = true
            }
        }
    }
}


