import SwiftUI

public struct SegmentDisplay: View {
    private var digits: Int
    @Binding var num: Int
    private var spacing: CGFloat
    
    public var body: some View {
        HStack(spacing: spacing) {
            Text("hello")
        }
    }
    
    public init(digits: Int, num: Binding<Int>, spacing: CGFloat? = 30) {
        self.digits = digits
        self._num = num
        self.spacing = spacing!
    }
}
