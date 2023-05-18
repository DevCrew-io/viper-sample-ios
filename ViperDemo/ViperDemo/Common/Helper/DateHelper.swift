//
//  DateHelper.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 18/05/2023.
//

import Foundation

class DateHelper {
    
    static func formatPublished(_ data: String) -> String {
        let dateFormatter = DateFormatter()
        let tempLocale = dateFormatter.locale
        dateFormatter.locale = Locale(identifier: "id_ID")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = dateFormatter.date(from: data)!
        dateFormatter.dateFormat = "EEEE dd MMMM yyyy - HH:mm:ss"
        dateFormatter.locale = tempLocale
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
    
}
