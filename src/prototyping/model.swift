import Foundation

extension String {
    func fromBae64() -> String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }

        return String(data: data, encoding: .utf8)
    }

    func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
}

print("Enter an Input: ")
if let originalString = readLine() {
    print("Original String: \(originalString)")
    let ut8String = originalString.dataUsingEnoding(NSUTF8StringEncoding)
    if let base64Encoded = utf8String?.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0)){
        println("Encoded: \(base64Encoded)")
    }
} else {
    print("Input Invalid")
}