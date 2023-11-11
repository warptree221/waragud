import SwiftUI

struct DashboardView: View {
    @StateObject var dashboardViewModel = DashboardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Text(StringConstants.kLblNotch)
                                .font(FontScheme.kInterExtraBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.heavy)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(19.0))
                            Divider()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(1.0), alignment: .leading)
                                .background(ColorConstants.Bluegray100)
                                .padding(.top, getRelativeHeight(19.0))
                            HStack {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblKamusta)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(11.820359)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(53.0),
                                               height: getRelativeHeight(13.0),
                                               alignment: .topLeading)
                                        .padding(.trailing)
                                    Text(StringConstants.kMsgEnjelinMorgean)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.886227)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(141.0),
                                               height: getRelativeHeight(19.0),
                                               alignment: .topLeading)
                                }
                                .frame(width: getRelativeWidth(141.0),
                                       height: getRelativeHeight(31.0), alignment: .center)
                                Spacer()
                                Image("img_buttonsection")
                                    .resizable()
                                    .frame(width: getRelativeWidth(65.0),
                                           height: getRelativeHeight(31.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.trailing, getRelativeWidth(8.0))
                            }
                            .frame(width: getRelativeWidth(388.0), height: getRelativeHeight(32.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.horizontal, getRelativeWidth(19.0))
                            Divider()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(1.0), alignment: .leading)
                                .background(ColorConstants.Bluegray100)
                                .padding(.top, getRelativeHeight(10.0))
                            ZStack(alignment: .center) {
                                VStack {
                                    HStack {
                                        Text(StringConstants.kLblBalance)
                                            .font(FontScheme
                                                .kInterMedium(size: getRelativeHeight(19.62963)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(75.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblActiveWallet)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(10.625)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(65.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(5.0))
                                    }
                                    .frame(width: getRelativeWidth(335.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(8.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                    VStack {
                                        ZStack(alignment: .leading) {
                                            VStack {
                                                Text(StringConstants.kLbl65)
                                                    .font(FontScheme
                                                        .kInterSemiBold(size: getRelativeHeight(11.011744)))
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(23.0),
                                                           height: getRelativeHeight(14.0),
                                                           alignment: .topLeading)
                                                    .padding(.horizontal, getRelativeWidth(10.0))
                                                Text(StringConstants.kMsgYouHaveARema)
                                                    .font(FontScheme
                                                        .kInterLight(size: getRelativeHeight(7.918557)))
                                                    .fontWeight(.light)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(117.0),
                                                           height: getRelativeHeight(10.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(17.0))
                                                    .padding(.horizontal, getRelativeWidth(10.0))
                                                Text(StringConstants.kLblPhp87500)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(24.316576)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(140.0),
                                                           height: getRelativeHeight(30.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(5.0))
                                            }
                                            .frame(width: getRelativeWidth(140.0),
                                                   height: getRelativeHeight(77.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(37.0))
                                            .padding(.leading, getRelativeWidth(57.0))
                                            .padding(.trailing, getRelativeWidth(52.0))
                                            Image("img_vector_blue_300")
                                                .resizable()
                                                .frame(width: getRelativeWidth(249.0),
                                                       height: getRelativeHeight(125.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 20.0,
                                                                           topRight: 20.0,
                                                                           bottomLeft: 20.0,
                                                                           bottomRight: 20.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(249.0),
                                               height: getRelativeHeight(125.0), alignment: .center)
                                        HStack {
                                            Text(StringConstants.kLbl0)
                                                .font(FontScheme
                                                    .kInterLight(size: getRelativeHeight(7.918557)))
                                                .fontWeight(.light)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(11.0),
                                                       height: getRelativeHeight(10.0),
                                                       alignment: .topLeading)
                                            Spacer()
                                            Text(StringConstants.kLbl100)
                                                .font(FontScheme
                                                    .kInterLight(size: getRelativeHeight(7.918557)))
                                                .fontWeight(.light)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(19.0),
                                                       height: getRelativeHeight(10.0),
                                                       alignment: .topLeading)
                                        }
                                        .frame(width: getRelativeWidth(246.0),
                                               height: getRelativeHeight(10.0), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(6.0))
                                        .padding(.leading, getRelativeWidth(4.0))
                                    }
                                    .frame(width: getRelativeWidth(251.0),
                                           height: getRelativeHeight(142.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0))
                                    .padding(.vertical, getRelativeHeight(14.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                }
                                .frame(width: getRelativeWidth(361.0),
                                       height: getRelativeHeight(219.0), alignment: .topLeading)
                                .overlay(RoundedCorners(topLeft: 6.12, topRight: 6.12,
                                                        bottomLeft: 6.12, bottomRight: 6.12)
                                        .stroke(ColorConstants.Black900,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 6.12, topRight: 6.12,
                                                           bottomLeft: 6.12, bottomRight: 6.12)
                                        .fill(ColorConstants.LightBlue50))
                                .padding(.bottom, getRelativeHeight(23.0))
                                ZStack(alignment: .center) {
                                    Image("img_group2331")
                                        .resizable()
                                        .frame(width: getRelativeWidth(288.0),
                                               height: getRelativeHeight(45.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 5.99, topRight: 5.99,
                                                                   bottomLeft: 5.99,
                                                                   bottomRight: 5.99))
                                    HStack {
                                        VStack {
                                            Text(StringConstants.kLblBudget)
                                                .font(FontScheme
                                                    .kInterRegular(size: getRelativeHeight(8.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(27.0),
                                                       height: getRelativeHeight(10.0),
                                                       alignment: .topLeading)
                                                .padding(.horizontal, getRelativeWidth(36.0))
                                            Text(StringConstants.kLblPhp250000)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(15.173662)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(100.0),
                                                       height: getRelativeHeight(19.0),
                                                       alignment: .topLeading)
                                        }
                                        .frame(width: getRelativeWidth(100.0),
                                               height: getRelativeHeight(29.0), alignment: .center)
                                        VStack {
                                            Text(StringConstants.kLblExpense)
                                                .font(FontScheme
                                                    .kInterRegular(size: getRelativeHeight(8.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(32.0),
                                                       height: getRelativeHeight(10.0),
                                                       alignment: .topLeading)
                                                .padding(.horizontal, getRelativeWidth(27.0))
                                            Text(StringConstants.kLblPhp162500)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(15.173662)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(96.0),
                                                       height: getRelativeHeight(19.0),
                                                       alignment: .topLeading)
                                        }
                                        .frame(width: getRelativeWidth(96.0),
                                               height: getRelativeHeight(29.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(42.0))
                                    }
                                    .frame(width: getRelativeWidth(238.0),
                                           height: getRelativeHeight(29.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(7.91))
                                    .padding(.bottom, getRelativeHeight(8.09))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(288.0),
                                       height: getRelativeHeight(45.0), alignment: .center)
                                .padding(.top, getRelativeHeight(197.0))
                                .padding(.horizontal, getRelativeWidth(36.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(242.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(19.0))
                            VStack {
                                VStack {
                                    VStack {
                                        HStack(spacing: 0) {
                                            TextField(StringConstants.kLblRecentExpenses,
                                                      text: $dashboardViewModel.frameeightText)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(14.1606655)))
                                                .foregroundColor(ColorConstants.Gray904)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(252.0),
                                               height: getRelativeHeight(24.0), alignment: .center)
                                        Divider()
                                            .background(ColorConstants.Gray904)
                                    }
                                    .frame(width: getRelativeWidth(252.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(18.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                    VStack(spacing: 0) {
                                        ScrollView(.vertical, showsIndicators: false) {
                                            LazyVStack {
                                                ForEach(0 ... 4, id: \.self) { index in
                                                    TallycontianerCell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(226.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(252.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray100)
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                    HStack {
                                        Button(action: {}, label: {
                                            HStack(spacing: 0) {
                                                Text(StringConstants.kMsgFullExpenseTa)
                                                    .font(FontScheme
                                                        .kInterBold(size: getRelativeHeight(8.835168)))
                                                    .fontWeight(.bold)
                                                    .padding(.horizontal, getRelativeWidth(14.0))
                                                    .padding(.vertical, getRelativeHeight(7.0))
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(101.0),
                                                           height: getRelativeHeight(26.0),
                                                           alignment: .topLeading)
                                                    .overlay(RoundedCorners(topLeft: 3.8,
                                                                            topRight: 3.8,
                                                                            bottomLeft: 3.8,
                                                                            bottomRight: 3.8)
                                                            .stroke(ColorConstants.Black900Cc,
                                                                    lineWidth: 1))
                                                    .background(RoundedCorners(topLeft: 3.8,
                                                                               topRight: 3.8,
                                                                               bottomLeft: 3.8,
                                                                               bottomRight: 3.8)
                                                            .fill(ColorConstants.Gray101))
                                            }
                                        })
                                        .frame(width: getRelativeWidth(101.0),
                                               height: getRelativeHeight(26.0),
                                               alignment: .topLeading)
                                        .overlay(RoundedCorners(topLeft: 3.8, topRight: 3.8,
                                                                bottomLeft: 3.8, bottomRight: 3.8)
                                                .stroke(ColorConstants.Black900Cc,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 3.8, topRight: 3.8,
                                                                   bottomLeft: 3.8,
                                                                   bottomRight: 3.8)
                                                .fill(ColorConstants.Gray101))
                                        Spacer()
                                        Button(action: {}, label: {
                                            HStack(spacing: 0) {
                                                Text(StringConstants.kLblAddExpense)
                                                    .font(FontScheme
                                                        .kInterBold(size: getRelativeHeight(8.835168)))
                                                    .fontWeight(.bold)
                                                    .padding(.horizontal, getRelativeWidth(21.0))
                                                    .padding(.vertical, getRelativeHeight(7.0))
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(101.0),
                                                           height: getRelativeHeight(26.0),
                                                           alignment: .topLeading)
                                                    .overlay(RoundedCorners(topLeft: 3.8,
                                                                            topRight: 3.8,
                                                                            bottomLeft: 3.8,
                                                                            bottomRight: 3.8)
                                                            .stroke(ColorConstants.Black900Cc,
                                                                    lineWidth: 1))
                                                    .background(RoundedCorners(topLeft: 3.8,
                                                                               topRight: 3.8,
                                                                               bottomLeft: 3.8,
                                                                               bottomRight: 3.8)
                                                            .fill(ColorConstants.Gray101))
                                                    .padding(.leading, getRelativeWidth(4.0))
                                            }
                                        })
                                        .frame(width: getRelativeWidth(101.0),
                                               height: getRelativeHeight(26.0),
                                               alignment: .topLeading)
                                        .overlay(RoundedCorners(topLeft: 3.8, topRight: 3.8,
                                                                bottomLeft: 3.8, bottomRight: 3.8)
                                                .stroke(ColorConstants.Black900Cc,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 3.8, topRight: 3.8,
                                                                   bottomLeft: 3.8,
                                                                   bottomRight: 3.8)
                                                .fill(ColorConstants.Gray101))
                                        .padding(.leading, getRelativeWidth(4.0))
                                    }
                                    .frame(width: getRelativeWidth(206.0),
                                           height: getRelativeHeight(26.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(8.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                }
                                .frame(width: getRelativeWidth(284.0),
                                       height: getRelativeHeight(282.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 4.71, topRight: 4.71,
                                                        bottomLeft: 4.71, bottomRight: 4.71)
                                        .stroke(ColorConstants.Bluegray100,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 4.71, topRight: 4.71,
                                                           bottomLeft: 4.71, bottomRight: 4.71)
                                        .fill(ColorConstants.WhiteA700))
                            }
                            .frame(width: getRelativeWidth(284.0), height: getRelativeHeight(282.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 4.71, topRight: 4.71,
                                                       bottomLeft: 4.71, bottomRight: 4.71))
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(19.0))
                            HStack {
                                Text(StringConstants.kLblActiveBudgets)
                                    .font(FontScheme
                                        .kInterMedium(size: getRelativeHeight(11.1131115)))
                                    .fontWeight(.medium)
                                    .padding(.leading, getRelativeWidth(8.0))
                                    .padding(.bottom, getRelativeHeight(8.0))
                                    .padding(.top, getRelativeHeight(10.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(98.0),
                                           height: getRelativeHeight(33.0), alignment: .topLeading)
                                    .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                            bottomLeft: 4.78, bottomRight: 4.78)
                                            .stroke(ColorConstants.Black900Cc,
                                                    lineWidth: 1))
                                    .background(ColorConstants.WhiteA700)
                                    .onTapGesture {
                                        dashboardViewModel.nextScreen = "WalletBudgetView"
                                    }
                                Text(StringConstants.kMsgSavingsProgres)
                                    .font(FontScheme
                                        .kInterMedium(size: getRelativeHeight(11.1131115)))
                                    .fontWeight(.medium)
                                    .padding(.leading, getRelativeWidth(6.0))
                                    .padding(.bottom, getRelativeHeight(8.0))
                                    .padding(.top, getRelativeHeight(10.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(105.0),
                                           height: getRelativeHeight(33.0), alignment: .topLeading)
                                    .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                            bottomLeft: 4.78, bottomRight: 4.78)
                                            .stroke(ColorConstants.Black900Cc,
                                                    lineWidth: 1))
                                    .background(ColorConstants.WhiteA700)
                                    .padding(.leading, getRelativeWidth(8.0))
                                Text(StringConstants.kMsgExpensesSummar)
                                    .font(FontScheme
                                        .kInterMedium(size: getRelativeHeight(11.1131115)))
                                    .fontWeight(.medium)
                                    .padding(.leading, getRelativeWidth(9.0))
                                    .padding(.bottom, getRelativeHeight(8.0))
                                    .padding(.top, getRelativeHeight(10.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(123.0),
                                           height: getRelativeHeight(33.0), alignment: .topLeading)
                                    .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                            bottomLeft: 4.78, bottomRight: 4.78)
                                            .stroke(ColorConstants.Black900Cc,
                                                    lineWidth: 1))
                                    .background(ColorConstants.WhiteA700)
                                    .padding(.leading, getRelativeWidth(8.0))
                                    .onTapGesture {
                                        dashboardViewModel.nextScreen = "ExpensesandBreakdownView"
                                    }
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(33.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(19.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblSavings)
                                    .font(FontScheme
                                        .kInterMedium(size: getRelativeHeight(19.62963)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(74.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                ColumnlanguageCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(298.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(8.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                            }
                            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(348.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.99, topRight: 5.99, bottomLeft: 5.99,
                                                    bottomRight: 5.99)
                                    .stroke(ColorConstants.Bluegray101,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.99, topRight: 5.99,
                                                       bottomLeft: 5.99, bottomRight: 5.99)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(19.0))
                            HStack {
                                Text(StringConstants.kLblCategories)
                                    .font(FontScheme
                                        .kInterMedium(size: getRelativeHeight(11.1131115)))
                                    .fontWeight(.medium)
                                    .padding(.leading, getRelativeWidth(23.0))
                                    .padding(.bottom, getRelativeHeight(8.0))
                                    .padding(.top, getRelativeHeight(10.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(105.0),
                                           height: getRelativeHeight(33.0), alignment: .topLeading)
                                    .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                            bottomLeft: 4.78, bottomRight: 4.78)
                                            .stroke(ColorConstants.Black900Cc,
                                                    lineWidth: 1))
                                    .background(ColorConstants.WhiteA700)
                                    .onTapGesture {
                                        dashboardViewModel.nextScreen = "CategoriesView"
                                    }
                                Text(StringConstants.kMsgAccountSetting)
                                    .font(FontScheme
                                        .kInterMedium(size: getRelativeHeight(11.1131115)))
                                    .fontWeight(.medium)
                                    .padding(.leading, getRelativeWidth(15.0))
                                    .padding(.bottom, getRelativeHeight(8.0))
                                    .padding(.top, getRelativeHeight(10.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(123.0),
                                           height: getRelativeHeight(33.0), alignment: .topLeading)
                                    .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                            bottomLeft: 4.78, bottomRight: 4.78)
                                            .stroke(ColorConstants.Black900Cc,
                                                    lineWidth: 1))
                                    .background(ColorConstants.WhiteA700)
                                    .padding(.leading, getRelativeWidth(8.0))
                                Text(StringConstants.kLblLogout)
                                    .font(FontScheme
                                        .kInterMedium(size: getRelativeHeight(11.1131115)))
                                    .fontWeight(.medium)
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.bottom, getRelativeHeight(8.0))
                                    .padding(.top, getRelativeHeight(11.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(98.0),
                                           height: getRelativeHeight(33.0), alignment: .topLeading)
                                    .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                            bottomLeft: 4.78, bottomRight: 4.78)
                                            .stroke(ColorConstants.Black900Cc,
                                                    lineWidth: 1))
                                    .background(ColorConstants.Black900)
                                    .padding(.leading, getRelativeWidth(8.0))
                                Spacer()
                            }
                            .onTapGesture {
                                dashboardViewModel.nextScreen = "WalletBudgetView"
                            }
                            .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(33.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.horizontal, getRelativeWidth(19.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ExpensesandBreakdownView(),
                                   tag: "ExpensesandBreakdownView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: WalletBudgetView(),
                                   tag: "WalletBudgetView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: CategoriesView(),
                                   tag: "CategoriesView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
