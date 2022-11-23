//
//  CreateTweetView.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 10/11/22.
//

import SwiftUI

struct CreateTweetView: View {
    
    @State var text = ""
    @Binding var show : Bool
    
    @ObservedObject var viewModel = CreateTweetViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.show.toggle()
                }, label: {
                    Text("Cancel")
                })
                
                Spacer()
                
                Button(action: {
                    if text != nil {
                        self.show.toggle()
                        self.viewModel.uploadPost(text: text)
                    }
                }, label: {
                    Text("Tweet").padding()
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
                
            }
            MultilineTextField(text: $text)
        }
        .padding()
    }
}


