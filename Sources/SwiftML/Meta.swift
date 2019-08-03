public class Meta: Final {
    required init() {
        super.init()
        identifier = "meta"
    }

    convenience init(with content: String) {
        self.init()
        self.innerContent = content
    }
}