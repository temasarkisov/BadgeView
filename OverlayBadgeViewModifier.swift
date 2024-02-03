import SwiftUI

struct OverlayBadge<BadgeLabel: View>: ViewModifier {
    @Environment(\.badgeStyle) private var badgeStyle
    var alignment: Alignment = .topTrailing
    var label: BadgeLabel
    
    func body(content: Content) -> some View {
        content
            .overlay(alignment: alignment) {
                AnyView(
                    badgeStyle.makeBody(AnyView(label))
                )
                    .fixedSize()
                    .alignmentGuide(alignment.horizontal) {
                        $0[HorizontalAlignment.center]
                    }
                    .alignmentGuide(alignment.vertical) {
                        $0[VerticalAlignment.center]
                    }
            }
    }
}
