//
//  BooksViewModel.swift
//  Assignement
//
//  Created by AKSHAY VAIDYA on 10/04/25.
//

import Foundation
import SwiftUI

class BooksViewModel:ObservableObject{
    
    @Published var books = [Book]()
    
    func getBooksData(){
        
        guard let url = URL(string: "http://gutendex.com/books") else {return}
        
        
        URLSession.shared.dataTask(with: url, completionHandler: {data,_,_ in
            
            
            guard let jsondata = data, let model = try? JSONDecoder().decode(BooksModel.self, from: jsondata)
                    
            else {
                return
            }
            DispatchQueue.main.async {
                self.books = model.results ?? []
            }
        })
        .resume()
 
    }
}
