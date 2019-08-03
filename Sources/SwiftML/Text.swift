public class Text: Tag {
    public let child = [Tag]()
    public var parent: Tag? = nil
    public var innerContent: String? = nil
    public var selfClosing: Bool = true
    
    required public init() {
    
    }

    convenience public init(_ content: String) {
        self.init(with: content)
    }
    
    public init(with content: String) {
        innerContent = content
    }
    
    public var depth: Int {
        get {
            if let parent = self.parent {
                return parent.depth + 1
            }
            
            return 0
        }
    }

    public func display() -> String {
        let str = "\(depth.asTab)\(innerContent!)\n"
        return str
    }
}
