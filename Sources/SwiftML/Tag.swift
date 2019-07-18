public protocol Tag : AnyObject{
    var child: [Tag] { get }
    var parent: Tag? { get set }
    var innerContent: String? { get }
    var selfClosing: Bool { get }
    var depth: Int { get }

    init()
    init(withParent: Tag)
    func display() -> String
}

extension Int {
    var asTab: String {
        get {
            var str = ""
            for _ in 0..<self {
                str += "  "
            }
            return str
        }
    }
}

public extension Tag {
    var depth: Int {
        get {
            if let parent = self.parent {
                return parent.depth + 1
            }
            
            return 0
        }
    }
    
    init(withParent parent: Tag) {
        self.init()
        self.parent = parent
    }
}
