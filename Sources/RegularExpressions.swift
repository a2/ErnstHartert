import Foundation

private let whitespace = "\\s+?"
private let optionalWhitespace = "\\s*?"

let allTestsDeclaration: NSRegularExpression = {
    let parensOrVoid = "(?:\\(\\s*?\\)|Void)"
    let pattern = [
        "(?:var|let)",
        whitespace,
        "allTests",
        optionalWhitespace,
        ":",
        optionalWhitespace,
        "\\[",
        optionalWhitespace,
        "\\(",
        optionalWhitespace,
        "String",
        optionalWhitespace,
        ",",
        optionalWhitespace,
        parensOrVoid,
        optionalWhitespace,
        "->",
        optionalWhitespace,
        parensOrVoid,
        optionalWhitespace,
        "\\)",
        optionalWhitespace,
        "\\]",
    ].joinWithSeparator("")
    return try! NSRegularExpression(pattern: pattern, options: [])
}()

let testFuncDeclaration: NSRegularExpression = {
    let pattern = [
        "func",
        whitespace,
        "(test\\w*?)",
        "\\(\\)",
    ].joinWithSeparator("")
    return try! NSRegularExpression(pattern: pattern, options: [])
}()

let classNameDeclaration: NSRegularExpression = {
    let pattern = [
        "class",
        whitespace,
        "(\\S+?)",
        optionalWhitespace,
        ":",
        optionalWhitespace,
        "XCTestCase",
    ].joinWithSeparator("")
    return try! NSRegularExpression(pattern: pattern, options: [])    
}()
