//  @Method Melody Algorithm
//  Created by John Melody on 05/06/2020.
//  Copyright © 2020 John Melody. All rights reserved.
//  An Encryption Algorithm

import Foundation

// Main func_
var err = "Invalid"
print("Enter an Input: ")
if let originalString = readLine() {
    print("Original String: \(originalString)")
    if Int(originalString) != nil {
        if let base64String = originalString.base64Encoded() {
            print("Encoded: \(base64String)")
            if let base64stringDecoded = base64String.base64Decoded() {
                print("Decoded: \(base64stringDecoded)")
            } else {
                print("\(err)")
            }
        } else {
            print("\(err)")
        }
    } else {
        print("\(err)")
    }
} else {
    print("Input Invalid")
}

extension String {
    // base64Encoded!
    func base64Encoded() -> String? {
        if let data = self.data(using: .utf8) {
            return data.base64EncodedString()
        }
        return nil
    }
    
    // base64Decoded!
    func base64Decoded() -> String? {
        if let data = Data(base64Encoded: self) {
            return String(data: data, encoding: .utf8)
        }
        return nil
    }
}
