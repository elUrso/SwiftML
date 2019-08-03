import Foundation


var html = HTML(as: .HTML5)
var div = Div()

var style = Style()

style.add(child: Selector("body", as: [
    Property("background-color", is: "red")
    ]))

var title = Header(size: 1, with: Text("Foo"))

var text = Paragraph(with: Text("Hello World"))

div.add(child: title)
div.add(child: text)

html.body.add(child: div)
html.body.add(child: Post(title: Text("Weather"), body: Text("21º")))

html.head.add(child: style)

print(html.display())