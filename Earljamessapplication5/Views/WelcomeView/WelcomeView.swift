import SwiftUI

struct WelcomeView: View {
    @StateObject var welcomeViewModel = WelcomeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Divider()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                               alignment: .leading)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(61.0))
                    Image("img_brownwalletwi")
                        .resizable()
                        .frame(width: getRelativeWidth(129.0), height: getRelativeHeight(184.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(78.0))
                        .padding(.horizontal, getRelativeWidth(66.0))
                    Text(StringConstants.kMsgTakeControlOf)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(20.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(206.0), height: getRelativeHeight(84.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(21.0))
                        .padding(.horizontal, getRelativeWidth(66.0))
                    Text(StringConstants.kMsgStayOnTopOf)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(20.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(268.0), height: getRelativeHeight(85.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(35.0))
                        .padding(.horizontal, getRelativeWidth(66.0))
                    Text(StringConstants.kMsgSecureYourFin)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(20.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(57.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(33.0))
                        .padding(.horizontal, getRelativeWidth(66.0))
                    Text(StringConstants.kMsgEliminateFinan)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(20.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(277.0), height: getRelativeHeight(57.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(33.0))
                        .padding(.horizontal, getRelativeWidth(66.0))
                    Button(action: {
                        welcomeViewModel.nextScreen = "DashboardView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblBegin)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(11.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(137.0),
                                       height: getRelativeHeight(42.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.99, topRight: 5.99,
                                                           bottomLeft: 5.99, bottomRight: 5.99)
                                        .fill(ColorConstants.Black900))
                                .padding(.vertical, getRelativeHeight(53.0))
                                .padding(.horizontal, getRelativeWidth(66.0))
                        }
                    })
                    .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(42.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 5.99, topRight: 5.99, bottomLeft: 5.99,
                                               bottomRight: 5.99)
                            .fill(ColorConstants.Black900))
                    .padding(.vertical, getRelativeHeight(53.0))
                    .padding(.horizontal, getRelativeWidth(66.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: DashboardView(),
                                   tag: "DashboardView",
                                   selection: $welcomeViewModel.nextScreen,
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

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
