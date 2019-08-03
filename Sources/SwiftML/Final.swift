public class Final: Tag {
    public let child = [Tag]()
    public var parent: Tag? = nil
    public var innerContent: String? = ""
    public var selfClosing: Bool = true

    var identifier = "?"

    public required init() {

    }

    public func display() -> String {
        return "\(depth.asTab)<\(identifier) \(innerContent!)/>\n"
    }
}
