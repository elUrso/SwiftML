public class Paragraph: Blank {
    required init() {
        super.init()
        identifier = "p"
    }

    convenience init(with tag: Tag) {
        self.init()
        self.add(child: tag.parent(self))
    }
}