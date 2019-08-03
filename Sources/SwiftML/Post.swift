// This file shall not live very long

public class Post: Div {
    required init() {
        super.init()
    }
    public init(title: Text, body: Text) {
        super.init()
        self.add(child: Header(size: 1, with: title))
        self.add(child: Paragraph(with: body))
    }
}