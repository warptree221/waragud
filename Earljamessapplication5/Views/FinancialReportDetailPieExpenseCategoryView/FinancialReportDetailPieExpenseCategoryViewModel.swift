import Foundation
import SwiftUI

class FinancialReportDetailPieExpenseCategoryViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var pillText: String = ""
    @Published var pilloneText: String = ""
}
