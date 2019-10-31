# BottomSheetModal
I’ve seen a lot of popular apps that are using this common UI pattern named Bottom Sheet: a card that slides up from the bottom and that is commonly used to show context related information or to perform actions (e.g. payment checkout process) making sure the user maintains the focus on the task at hand but still has some context.

This is a fully customizable and reusable Bottom Sheet Modal using SwiftUI. Demo:

![Bottom sheet modal Demo](Demo.gif)

# Usage

Use a state variable to show or hide modal

```swift
struct ContentView: View {
  @State private var showBottomSheet = false

  var body: some View {
    ZStack {
      Button(action: {
        withAnimation {
          self.showBottomSheet.toggle()
        }
      }) {
        Text("Show modal")
          .font(.title)
          .bold()
          .foregroundColor(.black)
      }

      BottomSheetModal(display: $showBottomSheet) {
        Text("Show your content")
          .font(Font.system(.headline))
          .foregroundColor(Color.black)
      }
    }
  }
}
```
