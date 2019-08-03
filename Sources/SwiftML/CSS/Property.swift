public class Property: Tag {
    public let child = [Tag]()
    public var parent: Tag? = nil
    public var innerContent: String? = ""
    public var selfClosing: Bool = true

    public var property = ""
    public var value = ""

    public required init() {

    }

    public init(_ name: String, is value: String) {
        self.property = name
        self.value = value
    }



    public func display() -> String {
        return "\(depth.asTab)\(property): \(value);\n"
    }
}
