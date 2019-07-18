public class HTML: Blank {
    override public var child: [Tag] {
        get {
            var child = [Tag]()
            child.append(head)
            child.append(body)
            return child
        }
        
        set {
        
        }
    }
    
    public enum DocumentType {
        case HTML5
    }
    
    public var body: Body
    public var doctype: Text
    public var head: Head
    
    convenience public init(`as` type: HTML.DocumentType) {
        switch type {
            case .HTML5:
                self.init()
                doctype.innerContent = "<!DOCTYPE html>"
        }
    }

    required public init() {
        doctype = Text(with: "")
        head = Head()
        body = Body()

        super.init()

        identifier = "html"
        body.parent = self
        head.parent = self
    }

    override public func display() -> String {
        var str = "\(depth.asTab)\(doctype.display())"
        str += "\(depth.asTab)<\(identifier)>\n"
        str += "\(head.display())"
        str += "\(body.display())"
        str += "\(depth.asTab)</\(identifier)>\n"
        return str
    }
}


