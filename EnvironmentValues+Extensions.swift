import SwiftUI

extension EnvironmentValues {
    var badgeStyle: any BadgeStyle {
        get {
            self[BadgeStyleKey.self]
        } set {
            self[BadgeStyleKey.self] = newValue
        }
    }
}
