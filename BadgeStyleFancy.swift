import SwiftUI

struct BadgeStyleFancy: BadgeStyle {
    func makeBody(_ label: AnyView) -> some View {
        label
            .foregroundColor(.white)
            .font(.caption)
            .padding(.horizontal, 7)
            .padding(.vertical, 4)
            .background(background)
            .containerShape(Capsule(style: .continuous))
    }
}

extension BadgeStyleFancy {
    var background: some View {
        ZStack {
            ContainerRelativeShape()
                .overlay {
                    ContainerRelativeShape()
                        .fill(LinearGradient(
                            colors: [.pink, .blue],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ))
                }
        }
    }
}
