//
//  SwiftUIView.swift
//  
//
//  Created by 변경민 on 2021/05/25.
//

import SwiftUI

public struct Segment: View {
    @Binding var num: Int
    var k: CGFloat = 50
    public var body: some View {
        ZStack {
            RoundSquare().fill(Color.green).frame(width: k, height: k*0.25) // 4
            RoundSquare().fill(Color.green).frame(width: k*0.25, height: k*0.75-2).offset(x: -k*0.375, y: -k*0.5) // 2
            RoundSquare().fill(Color.green).frame(width: k*0.25, height: k*0.75-2).offset(x: -k*0.375, y: k*0.5) // 5
            RoundSquare(topRight: k).fill(Color.green).frame(width: k*0.25, height: k-2).offset(x: k*0.375, y: -k*0.625-1) // 3
            RoundSquare(bottomRight: k).fill(Color.green).frame(width: k*0.25, height: k-2).offset(x: k*0.375, y: k*0.625+1) // 6
            RoundSquare(topLeft: k).fill(Color.green).frame(width: k*0.75-1, height: k*0.25).offset(x: -k*0.125-1, y: -k) // 1
            RoundSquare(bottomLeft: k).fill(Color.green).frame(width: k*0.75-1, height: k*0.25).offset(x: -k*0.125-1, y: k) // 7

        }.frame(width: k, height: k*2.25)
    }
    public init(num: Binding<Int>) {
        self._num = num
    }
}
