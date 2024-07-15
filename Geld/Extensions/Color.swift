//
//  Color.swift
//  Geld
//
//  Created by Logan Janssen on 15/7/2024.
//

import SwiftUI

extension Color {
    // Convert UIColor to hex string
    private func toHex() -> String? {
        let uiColor = UIColor(self)
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        uiColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return String(format: "%02X%02X%02X%02X",
                      Int(red * 255),
                      Int(green * 255),
                      Int(blue * 255),
                      Int(alpha * 255))
    }
    
    // Create Color from hex string
    private init?(hex: String) {
        let scanner = Scanner(string: hex)
        var rgba: UInt64 = 0
        guard scanner.scanHexInt64(&rgba) else { return nil }
        let red = Double((rgba >> 24) & 0xFF) / 255.0
        let green = Double((rgba >> 16) & 0xFF) / 255.0
        let blue = Double((rgba >> 8) & 0xFF) / 255.0
        let alpha = Double(rgba & 0xFF) / 255.0
        self = Color(red: red, green: green, blue: blue).opacity(alpha)
    }
}

extension Color: Codable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        if let hex = toHex() {
            try container.encode(hex)
        }
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let hex = try container.decode(String.self)
        if let color = Color(hex: hex) {
            self = color
        } else {
            throw DecodingError.dataCorruptedError(in: container, debugDescription: "Invalid color hex string")
        }
    }
}

