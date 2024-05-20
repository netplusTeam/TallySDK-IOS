//
//  Config.swift
//  TallyiOS
//
//  Created by Promise Ochornma on 30/04/2024.
//

import Foundation

public struct TallyConfig {
    /// your tally key
    var key: String
    /// the environment
    var staging: Bool
    /// the app background color
    var backgroundColor: UIColor
    /// the app text color
    var textColor: UIColor
    /// the app text bold font
    var boldFont: UIFont
    /// the app text semibold font
    var semiBoldFont: UIFont
    /// the app text medium font
    var mediumFont: UIFont
    /// the app text regular font
    var regularFont: UIFont
    /// the app color for buttons and app bar
    var accentColor: UIColor
    
    init(key: String, staging: Bool, backgroundColor: UIColor = .white, textColor: UIColor = .white, boldFont: UIFont = .systemFont(ofSize: 14, weight: .bold), semiBoldFont: UIFont = .systemFont(ofSize: 14, weight: .semibold), mediumFont: UIFont = .systemFont(ofSize: 14, weight: .medium), regularFont: UIFont = .systemFont(ofSize: 14, weight: .regular), accentColor: UIColor = .orange) {
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.staging = staging
        self.boldFont = boldFont
        self.accentColor = accentColor
        self.key = key
        self.semiBoldFont = semiBoldFont
        self.mediumFont = mediumFont
        self.regularFont = regularFont
    }
}


enum TallyHomeState {
    case card
    case merchant
    case token
    case transaction
}

enum TallyCardState {
    case cardSubView
    case recentSubview

}
