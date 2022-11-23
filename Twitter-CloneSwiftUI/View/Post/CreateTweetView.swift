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
    
    @State var imagePickerPresented = false
    @State var selectedImage: UIImage?
    @State var postImage: Image?
    @State var width = UIScreen.main.bounds.width
    
    
    
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
                        self.viewModel.uploadPost(text: text, image: selectedImage)
                    }
                }, label: {
                    Text("Tweet").padding()
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
                
            }
            MultilineTextField(text: $text)
            
            if postImage == nil {
                Button(action: {
                    self.imagePickerPresented.toggle()
                }, label: {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                        .padding(.top)
                        .foregroundColor(.black)
                }).sheet(isPresented: $imagePickerPresented, onDismiss: {
                    loadImage()
                },content: {
                    ImagePicker(image: $selectedImage)
                })
                
            } else if let image = postImage {
                VStack {
                    HStack(alignment: .top, content: {
                        image
                            .resizable()
                            .scaledToFill()
                            .padding(.horizontal)
                            .frame(width: width*0.9)
                            .cornerRadius(16)
                            .clipped()
                    })
                    Spacer()
                }
            }
        }
        
       
        .padding()
    }
}


extension CreateTweetView {
    func loadImage(){
        guard let selectedImage = selectedImage else {return}
        postImage = Image(uiImage: selectedImage)
    }
}


