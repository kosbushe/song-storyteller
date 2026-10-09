import AppKit
import Foundation

guard CommandLine.arguments.count == 3 else {
    fatalError("usage: generate_cover AVATAR.png COVER.png")
}

let avatarURL = URL(fileURLWithPath: CommandLine.arguments[1])
let coverURL = URL(fileURLWithPath: CommandLine.arguments[2])
guard let avatar = NSImage(contentsOf: avatarURL) else {
    fatalError("Could not load avatar")
}

let width = 1280
let height = 640
guard let bitmap = NSBitmapImageRep(
    bitmapDataPlanes: nil,
    pixelsWide: width,
    pixelsHigh: height,
    bitsPerSample: 8,
    samplesPerPixel: 4,
    hasAlpha: true,
    isPlanar: false,
    colorSpaceName: .deviceRGB,
    bytesPerRow: 0,
    bitsPerPixel: 0
) else { fatalError("Could not create cover bitmap") }

NSGraphicsContext.saveGraphicsState()
NSGraphicsContext.current = NSGraphicsContext(bitmapImageRep: bitmap)
NSGraphicsContext.current?.imageInterpolation = .high

let black = NSColor(calibratedWhite: 0.027, alpha: 1)
let white = NSColor.white
let silver = NSColor(calibratedWhite: 0.72, alpha: 1)
black.setFill()
NSRect(x: 0, y: 0, width: width, height: height).fill()

avatar.draw(in: NSRect(x: 32, y: 32, width: 576, height: 576))
NSColor(calibratedWhite: 0.34, alpha: 1).setFill()
NSRect(x: 640, y: 80, width: 2, height: 480).fill()

func draw(_ string: String, x: CGFloat, y: CGFloat, size: CGFloat, weight: NSFont.Weight, color: NSColor, tracking: CGFloat = 0) {
    let attributes: [NSAttributedString.Key: Any] = [
        .font: NSFont.systemFont(ofSize: size, weight: weight),
        .foregroundColor: color,
        .kern: tracking
    ]
    NSAttributedString(string: string, attributes: attributes).draw(at: NSPoint(x: x, y: y))
}

draw("SONG", x: 688, y: 378, size: 94, weight: .bold, color: white, tracking: -3)
draw("STORYTELLER", x: 688, y: 285, size: 55, weight: .bold, color: white, tracking: -1.7)

silver.setFill()
NSRect(x: 688, y: 250, width: 536, height: 2).fill()
draw("THE STORY BEHIND THE SONG", x: 688, y: 200, size: 18, weight: .medium, color: silver, tracking: 1.2)
draw("MEANING  /  SOURCES  /  STORY", x: 688, y: 102, size: 15, weight: .medium, color: silver, tracking: 1.1)

NSGraphicsContext.restoreGraphicsState()
guard let data = bitmap.representation(using: .png, properties: [:]) else {
    fatalError("Could not encode cover PNG")
}
try data.write(to: coverURL, options: .atomic)
