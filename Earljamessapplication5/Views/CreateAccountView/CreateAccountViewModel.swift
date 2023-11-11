import Foundation
import SwiftUI

class CreateAccountViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var frame40640Text: String = ""
    @Published var emailText: String = ""
    @Published var isValidEmailText: Bool = true
    @Published var frame40650Text: String = ""
}
