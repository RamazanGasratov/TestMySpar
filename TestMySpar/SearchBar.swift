//
//  SearchBar.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Локация", text: $text)
                .padding(8)
                .padding(.horizontal, 25)
                .background(Color.white)
                .overlay(
                    HStack {
                        Image(systemName: "location.fill")
                            .foregroundColor(.red)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.gray, lineWidth: 0.5)
                )
                .padding(.horizontal, 5)
                .onTapGesture {
                    self.isEditing = true
                }
            
            Button(action: {
                self.isEditing = true
                self.text = ""
                
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }) {
                Image(systemName: "text.justify")
                    .foregroundColor(.green)
                    .frame(minWidth: 0, maxWidth: .nan)
            }
            .padding(.trailing, 10)
            .transition(.move(edge: .trailing))
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
