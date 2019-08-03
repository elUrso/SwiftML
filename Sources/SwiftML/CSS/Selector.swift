public class Selector: Tag {
    public var child = [Tag]()
    public var parent: Tag? = nil
    public var innerContent: String? = nil
    public var selfClosing: Bool = false

    var selector = "?"

    public required init() {

    }

    public convenience init(_ name: String, `as` properties: [Property] = [Property]()) {
        self.init()
        selector = name

        for i in properties {
            self.add(child: i)
        }
    }

    public func add(child newChild: Tag) {
        self.child.append(newChild.parent(self))
    }

    public func display() -> String {
        var str = "\(depth.asTab)\(selector) {\n"
        for i in child {
            str += i.display()
        }
        str += "\(depth.asTab)}\n"
        return str
    }
}
