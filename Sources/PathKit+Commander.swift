import Commander
import PathKit

extension Path: ArgumentConvertible {
    public init(parser: ArgumentParser) throws {
        let string = try String(parser: parser)
        self.init(string)
    }
}
