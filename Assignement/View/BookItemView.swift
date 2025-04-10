//
//  BookItemView.swift
//  Assignement
//
//  Created by AKSHAY VAIDYA on 10/04/25.
//

import SwiftUI
import Kingfisher

struct BookItemView: View {
    let book : Book
    @State var navigateToDetail = false
    
    var body: some View {
        
        VStack{
            
            Button(action: {
                navigateToDetail = true
            }, label: {
                
                HStack(alignment: .top,spacing: 12){
                    
                    KFImage(URL(string: book.formats?.imageJPEG ?? ""))
                        .resizable()
                        .frame(width: 70, height: 70)
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        Text(book.title ?? "")
                            .font(.system(size: 17, weight: .bold))
                        
                        VStack(alignment: .leading, spacing: 4){
                            
                            Text(book.authors?.first?.name ?? "")
                                .font(.system(size: 15, weight: .medium))
                            
                            Text("\(book.authors?.first?.birthYear ?? 0)".removeSeparator())
                                .font(.system(size: 15, weight: .medium))
                        }
                    }
                    
                    Spacer()
                    
                }
            })
        }
        .navigationDestination(isPresented: $navigateToDetail, destination: {
            
            BookDetailView(book: book)
        })
    }
}

//#Preview {
//    BookItemView()
//}
extension String{
    
    func removeSeparator()-> String{
        let str = self
        if self == "0"{
            
            return ""
        }
        else{
            let finalval = str.replacingOccurrences(of: ",", with: "")
            return finalval
        }
    }
    
}
