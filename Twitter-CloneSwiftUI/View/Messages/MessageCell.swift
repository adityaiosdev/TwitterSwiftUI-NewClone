//
//  MessageCell.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 11/11/22.
//

import SwiftUI

struct MessageCell: View {
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(alignment: .leading,spacing: nil){
            Rectangle()
                .frame(width: width, height: 1,alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            HStack() {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .padding(.leading)
                VStack (alignment: .leading, spacing: 0){
                    HStack(){
                        Text("Cen ")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Text("@aditaja")
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                        Spacer(minLength: 0)
                        Text("6/20/21")
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                    Text("You: How's it going?")
                        .foregroundColor(.gray)
                    Spacer()
                }
               
            }
            .padding(.top,2)
        }
        .frame(width: width, height: 84)
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        MessageCell()
    }
}
