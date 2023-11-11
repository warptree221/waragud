import Foundation
import SwiftUI

class WelcomeViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
}
