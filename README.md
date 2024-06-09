# TallyiOS

[![CI Status](https://img.shields.io/travis/50696559/TallyiOS.svg?style=flat)](https://travis-ci.org/50696559/TallyiOS)
[![Version](https://img.shields.io/cocoapods/v/TallyiOS.svg?style=flat)](https://cocoapods.org/pods/TallyiOS)
[![License](https://img.shields.io/cocoapods/l/TallyiOS.svg?style=flat)](https://cocoapods.org/pods/TallyiOS)
[![Platform](https://img.shields.io/cocoapods/p/TallyiOS.svg?style=flat)](https://cocoapods.org/pods/TallyiOS)


**Getting Started with Tally SDK: A Guide for Businesses and Developers**

### **Introduction to Tally SDK: Revolutionizing Financial Transactions in Your App**

In today's fast-paced digital world, financial transactions and data management require not only robust security but also seamless integration and user-friendly features. The Tally SDK is designed to cater to these needs, offering a suite of features that enhance your app's financial capabilities. This guide introduces the key features of Tally SDK, demonstrating how it can transform the way your app handles financial transactions and data.

### Key Features of Tally SDK

1. **Card Tokenization**: At the heart of secure financial transactions is card tokenization. This feature converts sensitive card information into a secure and encrypted token. This means that actual card details are never stored or transmitted in a way that could be exploited, significantly reducing the risk of fraud.

2. **View the Latest Tokenized Card**: Users can easily access and view the most recently tokenized card, making it convenient to manage and use their preferred payment method without navigating their entire card portfolio.

3. **View All Tokenized Cards**: This feature provides a comprehensive overview of all their cards in one place for users with multiple tokenised cards. It simplifies card management and enhances user experience by offering easy access to their entire tokenized card list.

4. **Save QR Code Image to User's Device Gallery**: This innovative feature allows users to save the QR code of their tokenized card directly to their device's gallery. It's a convenient way to store and retrieve QR codes for payments and transactions without the need for a physical card.

5. **View Transactions from a Single QR (Token)**: Users can view the transaction history associated with a specific QR code or token. This targeted insight into transactions offers a clear and detailed view of spending patterns and transaction details for individual tokens.

6. **View Transaction History from All Tokenized Cards**: For a broader overview, this feature allows users to access the transaction history across all their tokenized cards. It's an essential tool for tracking spending, managing finances, and reviewing transaction details across multiple cards.

7. **View All Merchants and Location on Google Maps**: Enhancing the user experience further, this feature integrates with Google Maps to display merchants and their locations. Users can easily find where their transactions are happening, discover new merchants, and plan their visits accordingly.

### Step 1: Setting Up
To get started, you need to add the Tally SDK to your project. 

## Requirements

## Installation

TallyiOS is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TallyiOS'
```

## Example

To run the example project, clone the repo and run `pod install` from the Example directory first.


### Step 2: Configuring Your App
Your app needs the right permissions to make full use of Tally SDK's capabilities. Ensure to have added `NSPhotoLibraryAddUsageDescription` to your `info.plist`, else the SDK will crash.

### Step 3: Using the SDK
Integrating Tally SDK into your app's functionality is straightforward. For example, you can add it to a button in your app. When the user clicks this button, the SDK's user interface (UI) will launch, allowing them to interact with financial features securely. Here’s a simple setup to get you started:

```swift
 @IBAction func openTallySDK(){
        let config = TallyConfig(userId: "userId", userFullName: "First Name and Last Name", userEmail: "userEmail@email.com", userPhone: "080********", bankName: "bankName", staging: true, token: nil)
        config.openTallySdk(controller: self)
    }
```
Replace the parameters with the necessary credentials. This action opens the Tally SDK UI, ready for user interaction.

### Card Tokenization
The Tally SDK offers a secure way to handle card information through tokenization. This process converts sensitive card details into a secure token, minimizing the risk of exposing actual card information.

- **Storing and Encrypting Card Data**: The SDK takes care of encrypting card information and storing it securely, leveraging Keychain. You don't need to manage the complexities of saving to the Keychain. The SDK makes use of Valet to achieve this. To learn more about Valet, [click here](https://github.com/square/Valet) and to learn more about Keychain [click here](https://developer.apple.com/documentation/security/certificate_key_and_trust_services/keys/storing_keys_in_the_keychain)
  
- **Reading Encrypted Data**: To access the stored and encrypted card information, use:
  ```swift
  let tokenizedCardsData = TallDataUtil.shared.retrieveData()
  ```
  This command retrieves the data for you. You will need to check for `nil` as the SDK returns a `nil` value if it can't retrieve data from the keychain.

- **Deleting Information**: If you need to clear stored data, call:
  ```swift
   try TallDataUtil.shared.deleteAllData()
  ```
You need to wrap this in a try-catch.
## License

TallyiOS is available under the MIT license. See the LICENSE file for more info.
