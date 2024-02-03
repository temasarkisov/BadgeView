import SwiftUI

extension View {
    func badge<V: View>(
        alignment: Alignment = .topTrailing,
        @ViewBuilder _ content: () -> V
    ) -> some View {
        modifier(OverlayBadge(
            alignment: alignment,
            label: content()
        ))
    }
    
    func badgeStyle(_ style: any BadgeStyle) -> some View {
        environment(
            \.badgeStyle,
             style
        )
    }
}
