//
//  SearchView.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 10/11/22.
//

import SwiftUI

struct SearchView: View {
    
    @State var text = ""
    @State var isEditing = false
    
    var body: some View {
        VStack{
            SearchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            if (!isEditing){
                List(0..<9) { i in
                    
                    SearchCell(tag: "Helo", tweets: String(i))
                    
                }
            }else
            {
                List(0..<9){ _ in
                    SearchUserCell()
                }
            }
        }
        .padding(.top)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
