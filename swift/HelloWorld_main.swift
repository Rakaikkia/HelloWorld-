import Foundation

/// - Throws: `HelloWorldError.outputFailed`, if failed.
func printHelloWorldWithErrorHandling() throws {
    let message = "Hello World!\n"
    guard let data = message.data(using: .utf8) else {
        throw HelloWorldError.stringEncodingFailed
    }

    let outputHandle = FileHandle.standardOutput
    do {
        try outputHandle.write(contentsOf: data)
    } catch {
        throw HelloWorldError.outputFailed(underlyingError: error)
    }
}

enum HelloWorldError: Error {
    case stringEncodingFailed
    case outputFailed(underlyingError: Error)
}

do {
    try printHelloWorldWithErrorHandling()
} catch {
    fputs("Error: \(error)\n", stderr)
}
