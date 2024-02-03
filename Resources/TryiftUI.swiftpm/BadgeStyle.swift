import SwiftUI

protocol BadgeStyle {
    associatedtype Body: View
    
    @ViewBuilder
    func makeBody(_ label: AnyView) -> Body
}

extension BadgeStyle where Self == BadgeStyleFancy {
    static var fancy: BadgeStyleFancy {
        BadgeStyleFancy()
    }
}
