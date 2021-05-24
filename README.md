# SegmentDisplay

## Usage

```Swift
import SegmentDisplay

struct ContentView: View {
    @State var num = 300

    var body: some View {
        SegmentDisplay(digits: 3, num: $num)
    }
}
```
