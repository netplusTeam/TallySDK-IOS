//
//  CheckOutResponse.swift
//  TallyiOS
//
//  Created by Promise Ochornma on 22/05/2024.
//

import Foundation



public struct CheckOutResponse: Codable {
    let amount, customerId, domain, merchantId, status, transId : String
    
    enum CodingKeys: String, CodingKey {
        case customerId
        case domain
        case merchantId
        case status
        case transId
        case amount
    }
}


public struct PayPayload: Codable {
    let clientData, type : String
    
    enum CodingKeys: String, CodingKey {
        case clientData
        case type
    }
}

public struct PayResponse: Codable {
    let ACSUrl, MD, PaReq, TermUrl, amount, code, eciFlag, orderId, provider, redirectHtml, result, status, transId : String
    
    enum CodingKeys: String, CodingKey {
        case ACSUrl
        case MD
        case PaReq
        case TermUrl
        case code
        case amount
        case eciFlag
        case orderId
        case provider
        case redirectHtml
        case result
        case status
        case transId
    }
}

public struct WebResponse: Codable {
    let currency_code, customerName, email, message, amount, code, narration, orderId, result, status, transId : String
    
    enum CodingKeys: String, CodingKey {
        case currency_code
        case customerName
        case email
        case message
        case amount
        case code
        case narration
        case orderId
        case result
        case status
        case transId
    }
}

public struct VerveOtpPayload: Codable {
    let OTPData : String
    var type = "OTP"

    enum CodingKeys: String, CodingKey {
        case OTPData
        case type
    }
}

