public class Blank: Tag {
    public var child = [Tag]()
    public var parent: Tag? = nil
    public var innerContent: String? = nil
    public var selfClosing: Bool = false

    var identifier = "?"

    public required init() {

    }

    public func add(child newChild: Tag) {
        self.child.append(newChild.parent(self))
    }

    public func display() -> String {
        var str = "\(depth.asTab)<\(identifier)>\n"
        for i in child {
            str += i.display()
        }
        str += "\(depth.asTab)</\(identifier)>\n"
        return str
    }
}
