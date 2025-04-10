//
//  Book.swift
//  Assignement
//
//  Created by AKSHAY VAIDYA on 10/04/25.
//

import SwiftUI

struct BookListView: View {
    @EnvironmentObject var booksViewModel: BooksViewModel
    
    var body: some View {
        VStack{
            List(booksViewModel.books, id: \.self){book in
                
                BookItemView(book: book)
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            
            
        }
    }
}


