//
//  ContentView.swift
//  Assignement
//
//  Created by AKSHAY VAIDYA on 10/04/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var booksViewModel = BooksViewModel()
    
    var body: some View {
        NavigationStack{
            
            BookListView()
                .environmentObject(booksViewModel)
                .navigationBarHidden(true)
        }
        .onAppear(){
            
            booksViewModel.getBooksData()
        }
    }
}

#Preview {
    ContentView()
}
