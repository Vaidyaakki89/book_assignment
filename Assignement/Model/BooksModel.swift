//
//  BooksModel.swift
//  Assignement
//
//  Created by AKSHAY VAIDYA on 10/04/25.
import Foundation

// MARK: - BooksModel
struct BooksModel: Codable, Hashable {
    let count: Int?
    let next: String?
    let previous: String?
    let results: [Book]?
}

// MARK: - Book (formerly Result)
struct Book: Codable, Hashable {
    let id: Int?
    let title: String?
    let authors: [Author]?
    let summaries: [String]?
    let translators: [Author]?
    let subjects: [String]?
    let bookshelves: [String]?
    let languages: [String]?
    let copyright: Bool?
    let mediaType: String?
    let formats: Formats?
    let downloadCount: Int?

    enum CodingKeys: String, CodingKey, Hashable {
        case id, title, authors, summaries, translators, subjects, bookshelves, languages, copyright
        case mediaType = "media_type"
        case formats
        case downloadCount = "download_count"
    }
}

// MARK: - Author
struct Author: Codable, Hashable {
    let name: String?
    let birthYear: Int?
    let deathYear: Int?

    enum CodingKeys: String, CodingKey {
        case name
        case birthYear = "birth_year"
        case deathYear = "death_year"
    }
}

// MARK: - Formats
struct Formats: Codable, Hashable {
    let textHTML: String?
    let applicationEpubZip: String?
    let applicationXMobipocketEbook: String?
    let textPlainCharsetUsASCII: String?
    let applicationRDFXML: String?
    let imageJPEG: String?
    let applicationOctetStream: String?
    let textPlainCharsetUTF8: String?
    let textHTMLCharsetUTF8: String?
    let textPlainCharsetISO88591: String?
    let textHTMLCharsetISO88591: String?

    enum CodingKeys: String, CodingKey, Hashable {
        case textHTML = "text/html"
        case applicationEpubZip = "application/epub+zip"
        case applicationXMobipocketEbook = "application/x-mobipocket-ebook"
        case textPlainCharsetUsASCII = "text/plain; charset=us-ascii"
        case applicationRDFXML = "application/rdf+xml"
        case imageJPEG = "image/jpeg"
        case applicationOctetStream = "application/octet-stream"
        case textPlainCharsetUTF8 = "text/plain; charset=utf-8"
        case textHTMLCharsetUTF8 = "text/html; charset=utf-8"
        case textPlainCharsetISO88591 = "text/plain; charset=iso-8859-1"
        case textHTMLCharsetISO88591 = "text/html; charset=iso-8859-1"
    }
}
