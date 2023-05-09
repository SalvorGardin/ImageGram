//
//  DateFormatter+Extension.swift
//  ImageGram
//
//  Created by Aleksey Shaposhnikov on 09.05.2023.
//

import Foundation

extension DateFormatter {
    static let longDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale.autoupdatingCurrent
        return dateFormatter
    }()
}
