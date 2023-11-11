import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var emailText: String = ""
    @Published var isValidEmailText: Bool = true
    @Published var frame40650Text: String = ""
    @Published var isValidFrame40650Text: Bool = true
}
