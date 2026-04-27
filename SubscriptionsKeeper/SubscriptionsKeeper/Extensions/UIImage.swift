//
//  UIImage+DominantColor.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 27.04.2026.
//

import SwiftUI

extension UIImage {
    /// Extracts the most dominant color across the entire image.
    ///
    /// Algorithm:
    /// 1. Scale the image down to 50x50 to reduce computation
    /// 2. Read raw RGBA pixel data into a flat buffer
    /// 3. Skip near-transparent pixels (alpha < 128)
    /// 4. Bucket every pixel by rounding each RGB channel to the nearest 32
    ///    — this groups perceptually similar colors together
    /// 5. Return the average color of the largest bucket — the color
    ///    that occupies the most area in the image
    func dominantColor() -> Color {
        let targetSize = CGSize(width: 50, height: 50)

        UIGraphicsBeginImageContextWithOptions(targetSize, false, 1.0)
        defer { UIGraphicsEndImageContext() }
        draw(in: CGRect(origin: .zero, size: targetSize))

        guard
            let resized = UIGraphicsGetImageFromCurrentImageContext(),
            let cgImage = resized.cgImage
        else {
            return Color(.systemGray5)
        }

        let width = cgImage.width
        let height = cgImage.height
        let bytesPerPixel = 4
        let bytesPerRow = width * bytesPerPixel
        var pixelData = [UInt8](repeating: 0, count: height * bytesPerRow)

        guard let context = CGContext(
            data: &pixelData,
            width: width,
            height: height,
            bitsPerComponent: 8,
            bytesPerRow: bytesPerRow,
            space: CGColorSpaceCreateDeviceRGB(),
            bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue
        ) else {
            return Color(.systemGray5)
        }

        context.draw(cgImage, in: CGRect(x: 0, y: 0, width: width, height: height))

        // Bucket every pixel — bucket size 32 gives ~8 steps per channel
        let bucketSize = 32
        typealias Bucket = (count: Int, totalR: Int, totalG: Int, totalB: Int)
        var buckets: [Int: Bucket] = [:]

        let totalPixels = width * height
        for i in 0..<totalPixels {
            let offset = i * bytesPerPixel
            let alpha = pixelData[offset + 3]
            guard alpha >= 128 else { continue }   // skip transparent pixels

            let r = Int(pixelData[offset])
            let g = Int(pixelData[offset + 1])
            let b = Int(pixelData[offset + 2])

            let key = (r / bucketSize) << 16 | (g / bucketSize) << 8 | (b / bucketSize)
            if let existing = buckets[key] {
                buckets[key] = (existing.count + 1, existing.totalR + r, existing.totalG + g, existing.totalB + b)
            } else {
                buckets[key] = (1, r, g, b)
            }
        }

        // Sort buckets by pixel count descending, then pick the first
        // non-white and non-black bucket. Fall back to the largest bucket
        // if every bucket is achromatic (e.g. a pure grayscale image).
        let sorted = buckets.values.sorted { $0.count > $1.count }

        let candidate = sorted.first { bucket in
            let avgR = Double(bucket.totalR) / Double(bucket.count)
            let avgG = Double(bucket.totalG) / Double(bucket.count)
            let avgB = Double(bucket.totalB) / Double(bucket.count)
            let isNearWhite = avgR > 220 && avgG > 220 && avgB > 220
            let isNearBlack = avgR < 35  && avgG < 35  && avgB < 35
            return !isNearWhite && !isNearBlack
        } ?? sorted.first

        guard let dominant = candidate else {
            return Color(.systemGray5)
        }

        let count = Double(dominant.count)
        return Color(
            red: Double(dominant.totalR) / count / 255.0,
            green: Double(dominant.totalG) / count / 255.0,
            blue: Double(dominant.totalB) / count / 255.0
        )
    }
}
