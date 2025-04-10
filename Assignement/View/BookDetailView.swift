//
//  BookDetailView.swift
//  Assignement
//
//  Created by AKSHAY VAIDYA on 10/04/25.
//

import SwiftUI
import Kingfisher

struct BookDetailView: View {
    let book : Book
    @State var downloadCount = ""
    @State var publishedYear = ""
    
    var body: some View {
        
        VStack{
            ScrollView{
                VStack(spacing: 10){
                    
                    KFImage(URL(string: book.formats?.imageJPEG ?? ""))
                        .resizable()
                        .frame(width: 200, height: 200)
                        .padding(.bottom, 10)
                    
                    Text(book.title ?? "")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text(book.authors?.first?.name ?? "")
                        .font(.system(size: 17, weight: .medium))
                    
                    Text("Published year: \(publishedYear)")
                        .font(.system(size: 17, weight: .medium))
                    
                    Text(book.summaries?.first ?? "")
                        .font(.system(size: 17, weight: .medium))
                        .padding(.vertical, 15)
                    
                    Text("Total downloads: \(downloadCount)")
                        .font(.system(size: 19, weight: .bold))
                      
                    
                    Button(action: {
                        if let url = URL(string: book.formats?.applicationOctetStream ?? ""){
                            UIApplication.shared.open(url)
                        }
                        
                    }, label: {
                        
                        Text("DOWNLOAD")
                            .foregroundColor(.white)
                            .font(.system(size: 17, weight: .bold))
                    })
                    .padding(16)
                    .background(.blue)
                    .cornerRadius(8)
                }
                .padding(.horizontal, 16)
            }
        }
                .onAppear(){
                    
                    downloadCount = "\(book.downloadCount ?? 0)".removeSeparator()
                    publishedYear = "\(book.authors?.first?.birthYear ?? 0)".removeSeparator()
                }
    }
}

//#Preview {
//    BookDetailView()
//}
