import SwiftUI

struct FinanceReportView: View {
    @StateObject var financeReportViewModel = FinanceReportViewModel()
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
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblKamusta)
                                    .font(FontScheme
                                        .kInterMedium(size: getRelativeHeight(11.820359)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(53.0),
                                           height: getRelativeHeight(13.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kMsgEnjelinMorgean)
                                    .font(FontScheme
                                        .kInterSemiBold(size: getRelativeHeight(16.886227)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(141.0),
                                           height: getRelativeHeight(19.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(141.0), height: getRelativeHeight(31.0),
                                   alignment: .center)
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
                        .padding(.horizontal, getRelativeWidth(19.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(32.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(12.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .leading)
                            .background(ColorConstants.Bluegray100)
                        ZStack(alignment: .bottomLeading) {
                            ZStack(alignment: .center) {
                                Image("img_group2342")
                                    .resizable()
                                    .frame(width: getRelativeWidth(266.0),
                                           height: getRelativeHeight(265.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLbl900000)
                                    .font(FontScheme
                                        .kInterSemiBold(size: getRelativeHeight(20.22857)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(108.0),
                                           height: getRelativeHeight(25.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(126.83))
                                    .padding(.horizontal, getRelativeWidth(78.01))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(266.0), height: getRelativeHeight(265.0),
                                   alignment: .trailing)
                            .padding(.leading, getRelativeWidth(52.75))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeWidth(19.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 9.75, topRight: 9.75,
                                                               bottomLeft: 9.75, bottomRight: 9.75)
                                            .fill(ColorConstants.Gray905))
                                Text(StringConstants.kLblCategory)
                                    .font(FontScheme
                                        .kInterMedium(size: getRelativeHeight(11.1131115)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(48.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(9.0))
                            }
                            .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(19.0),
                                   alignment: .bottomLeading)
                            .padding(.top, getRelativeHeight(226.25))
                            .padding(.trailing, getRelativeWidth(242.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(318.0), height: getRelativeHeight(265.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(56.0))
                        .padding(.horizontal, getRelativeWidth(30.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(322.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
                    VStack {
                        ZStack(alignment: .topTrailing) {
                            VStack {
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kLblRecentExpenses,
                                                  text: $financeReportViewModel.frameeightText)
                                            .font(FontScheme
                                                .kInterSemiBold(size: getRelativeHeight(20.25)))
                                            .foregroundColor(ColorConstants.Gray904)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(360.0),
                                           height: getRelativeHeight(35.0), alignment: .center)
                                    Divider()
                                        .background(ColorConstants.Gray904)
                                }
                                .frame(width: getRelativeWidth(360.0),
                                       height: getRelativeHeight(35.0), alignment: .center)
                                .padding(.top, getRelativeHeight(13.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 4, id: \.self) { index in
                                                Tallycontianer1Cell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(323.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(23.0))
                                .padding(.horizontal, getRelativeWidth(18.0))
                            }
                            .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(339.0),
                                   alignment: .center)
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(177.0),
                                       height: getRelativeHeight(38.0), alignment: .topTrailing)
                                .background(ColorConstants.Bluegray101)
                                .padding(.bottom, getRelativeHeight(296.0))
                                .padding(.leading, getRelativeWidth(185.2))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(362.0), height: getRelativeHeight(339.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(33.0))
                        Button(action: {
                            financeReportViewModel.nextScreen = "DashboardView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblDashboard)
                                    .font(FontScheme
                                        .kInterMedium(size: getRelativeHeight(11.1131115)))
                                    .fontWeight(.medium)
                                    .padding(.horizontal, getRelativeWidth(23.0))
                                    .padding(.vertical, getRelativeHeight(9.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(105.0),
                                           height: getRelativeHeight(33.0), alignment: .topLeading)
                                    .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                            bottomLeft: 4.78, bottomRight: 4.78)
                                            .stroke(ColorConstants.Black900Cc,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                               bottomLeft: 4.78, bottomRight: 4.78)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(53.0))
                                    .padding(.horizontal, getRelativeWidth(33.0))
                            }
                        })
                        .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(33.0),
                               alignment: .topLeading)
                        .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78, bottomLeft: 4.78,
                                                bottomRight: 4.78)
                                .stroke(ColorConstants.Black900Cc,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 4.78, topRight: 4.78, bottomLeft: 4.78,
                                                   bottomRight: 4.78)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(53.0))
                        .padding(.horizontal, getRelativeWidth(33.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(426.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(35.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: DashboardView(),
                                   tag: "DashboardView",
                                   selection: $financeReportViewModel.nextScreen,
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

struct FinanceReportView_Previews: PreviewProvider {
    static var previews: some View {
        FinanceReportView()
    }
}
