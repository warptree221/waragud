import SwiftUI

struct ExpensesandBreakdownView: View {
    @StateObject var expensesandBreakdownViewModel = ExpensesandBreakdownViewModel()
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
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
                    VStack {
                        ZStack(alignment: .leading) {
                            VStack {
                                Text(StringConstants.kLblDashboard)
                                    .font(FontScheme
                                        .kInterMedium(size: getRelativeHeight(11.1131115)))
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
                                expensesandBreakdownViewModel.nextScreen = "DashboardView"
                            }
                            .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(33.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 4.78, topRight: 4.78, bottomLeft: 4.78,
                                                    bottomRight: 4.78)
                                    .stroke(ColorConstants.Black900Cc,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.78, topRight: 4.78,
                                                       bottomLeft: 4.78, bottomRight: 4.78)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(725.0))
                            .padding(.leading, getRelativeWidth(110.0))
                            .padding(.trailing, getRelativeWidth(123.0))
                            Image("img_image14")
                                .resizable()
                                .frame(width: getRelativeWidth(338.0),
                                       height: getRelativeHeight(732.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(758.0),
                               alignment: .center)
                        .padding(.leading, getRelativeWidth(52.0))
                        .padding(.trailing, getRelativeWidth(40.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(758.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: DashboardView(),
                                   tag: "DashboardView",
                                   selection: $expensesandBreakdownViewModel.nextScreen,
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

struct ExpensesandBreakdownView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesandBreakdownView()
    }
}
