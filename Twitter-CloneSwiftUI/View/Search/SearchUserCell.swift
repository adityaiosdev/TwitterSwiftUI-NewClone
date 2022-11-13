//
//  SearchUserCell.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 11/11/22.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44,height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text("Com")
                    .fontWeight(.heavy)
                Text("@aditaja")
            }
            Spacer()
        }
        
    }
}

struct SearchUserCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserCell()
    }
}
