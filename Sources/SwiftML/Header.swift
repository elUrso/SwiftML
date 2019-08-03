public class Header: Blank {
    var size: Int = 1

    required init() {
        super.init()
        identifier = "h"
    }

    convenience init(with tag: Tag) {
        self.init()
        self.add(child: tag.parent(self))
    }

    convenience init(size: Int, with tag: Tag) {
        self.init(with: tag)
        self.size = size
    }

    convenience init(size: Int) {
        self.init()
        self.size = size
    }

    override public func display() -> String {
        var str = "\(depth.asTab)<\(identifier)\(size)>\n"
        for i in child {
            str += i.display()
        }
        str += "\(depth.asTab)</\(identifier)\(size)>\n"
        return str
    }
}