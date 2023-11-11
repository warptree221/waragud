import SwiftUI

struct WalletBudgetView: View {
    @StateObject var walletBudgetViewModel = WalletBudgetViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text(StringConstants.kLblNotch)
                            .font(FontScheme.kInterExtraBold(size: getRelativeHeight(15.0)))
                            .fontWeight(.heavy)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(193.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(19.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(22.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .leading)
                            .background(ColorConstants.Bluegray100)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(19.0))
                    VStack {
                        HStack {
                            Text(StringConstants.kMsgWalletsAndBud)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(179.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(7.0))
                            Spacer()
                            Image("img_buttonsection")
                                .resizable()
                                .frame(width: getRelativeWidth(65.0),
                                       height: getRelativeHeight(31.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.trailing, getRelativeWidth(8.0))
                        }
                        .frame(width: getRelativeWidth(385.0), height: getRelativeHeight(32.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(23.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(32.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(12.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .leading)
                            .background(ColorConstants.Bluegray100)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
                    VStack(alignment: .trailing, spacing: 0) {
                        HStack {
                            Button(action: {
                                walletBudgetViewModel.nextScreen = "ExpensesandBreakdownView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblDeleteBudget)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(11.1131115)))
                                        .fontWeight(.medium)
                                        .padding(.horizontal, getRelativeWidth(23.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(123.0),
                                               height: getRelativeHeight(33.0),
                                               alignment: .topLeading)
                                        .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                                bottomLeft: 4.78, bottomRight: 4.78)
                                                .stroke(ColorConstants.Black900Cc,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                                   bottomLeft: 4.78,
                                                                   bottomRight: 4.78)
                                                .fill(ColorConstants.WhiteA700))
                                }
                            })
                            .frame(width: getRelativeWidth(123.0), height: getRelativeHeight(33.0),
                                   alignment: .topLeading)
                            .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78, bottomLeft: 4.78,
                                                    bottomRight: 4.78)
                                    .stroke(ColorConstants.Black900Cc,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                       bottomLeft: 4.78, bottomRight: 4.78)
                                    .fill(ColorConstants.WhiteA700))
                            Spacer()
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblAddNewBudget)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(11.1131115)))
                                        .fontWeight(.medium)
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(123.0),
                                               height: getRelativeHeight(33.0),
                                               alignment: .topLeading)
                                        .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                                bottomLeft: 4.78, bottomRight: 4.78)
                                                .stroke(ColorConstants.Black900Cc,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                                   bottomLeft: 4.78,
                                                                   bottomRight: 4.78)
                                                .fill(ColorConstants.Black900))
                                        .padding(.leading, getRelativeWidth(9.0))
                                }
                            })
                            .frame(width: getRelativeWidth(123.0), height: getRelativeHeight(33.0),
                                   alignment: .topLeading)
                            .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78, bottomLeft: 4.78,
                                                    bottomRight: 4.78)
                                    .stroke(ColorConstants.Black900Cc,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                       bottomLeft: 4.78, bottomRight: 4.78)
                                    .fill(ColorConstants.Black900))
                            .padding(.leading, getRelativeWidth(9.0))
                        }
                        .frame(width: getRelativeWidth(255.0), height: getRelativeHeight(33.0),
                               alignment: .trailing)
                        .padding(.horizontal, getRelativeWidth(39.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(33.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(24.0))
                    VStack {
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        StackweeklyCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(361.0), alignment: .center)
                        .padding(.horizontal, getRelativeWidth(34.0))
                        ZStack(alignment: .center) {
                            VStack {
                                HStack {
                                    Text(StringConstants.kMsgUntilMmDdYyy)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(19.62963)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(180.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblActiveWallet)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(10.625)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.LightBlue50)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(65.0),
                                               height: getRelativeHeight(13.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(4.0))
                                        .padding(.bottom, getRelativeHeight(6.0))
                                }
                                .frame(width: getRelativeWidth(329.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .padding(.top, getRelativeHeight(9.0))
                                .padding(.horizontal, getRelativeWidth(17.0))
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
                                    }
                                    .frame(width: getRelativeWidth(140.0),
                                           height: getRelativeHeight(75.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(37.0))
                                    .padding(.leading, getRelativeWidth(57.0))
                                    .padding(.trailing, getRelativeWidth(52.0))
                                    Image("img_vector_blue_300")
                                        .resizable()
                                        .frame(width: getRelativeWidth(249.0),
                                               height: getRelativeHeight(125.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                                   bottomLeft: 20.0,
                                                                   bottomRight: 20.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(249.0),
                                       height: getRelativeHeight(125.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0))
                                .padding(.vertical, getRelativeHeight(13.0))
                                .padding(.horizontal, getRelativeWidth(17.0))
                            }
                            .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(219.0),
                                   alignment: .bottomLeading)
                            .overlay(RoundedCorners(topLeft: 6.12, topRight: 6.12, bottomLeft: 6.12,
                                                    bottomRight: 6.12)
                                    .stroke(ColorConstants.Black900,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 6.12, topRight: 6.12,
                                                       bottomLeft: 6.12, bottomRight: 6.12)
                                    .fill(ColorConstants.LightBlue50))
                            Image("img_group2331")
                                .resizable()
                                .frame(width: getRelativeWidth(288.0),
                                       height: getRelativeHeight(45.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 5.99, topRight: 5.99,
                                                           bottomLeft: 5.99, bottomRight: 5.99))
                                .padding(.top, getRelativeHeight(197.0))
                                .padding(.horizontal, getRelativeWidth(36.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(153.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.horizontal, getRelativeWidth(34.0))
                        VStack {
                            Text(StringConstants.kLblDashboard)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(11.1131115)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(57.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(9.0))
                                .padding(.horizontal, getRelativeWidth(23.0))
                        }
                        .onTapGesture {
                            walletBudgetViewModel.nextScreen = "DashboardView"
                        }
                        .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(33.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78, bottomLeft: 4.78,
                                                bottomRight: 4.78)
                                .stroke(ColorConstants.Black900Cc,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 4.78, topRight: 4.78, bottomLeft: 4.78,
                                                   bottomRight: 4.78)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.horizontal, getRelativeWidth(34.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(714.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ExpensesandBreakdownView(),
                                   tag: "ExpensesandBreakdownView",
                                   selection: $walletBudgetViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DashboardView(),
                                   tag: "DashboardView",
                                   selection: $walletBudgetViewModel.nextScreen,
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

struct WalletBudgetView_Previews: PreviewProvider {
    static var previews: some View {
        WalletBudgetView()
    }
}
