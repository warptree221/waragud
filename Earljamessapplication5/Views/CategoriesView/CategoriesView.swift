import SwiftUI

struct CategoriesView: View {
    @StateObject var categoriesViewModel = CategoriesViewModel()
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
                        Button(action: {
                            categoriesViewModel.nextScreen = "DashboardView"
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
                                    .padding(.horizontal, getRelativeWidth(162.0))
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
                        .padding(.horizontal, getRelativeWidth(162.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(33.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(749.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: DashboardView(),
                                   tag: "DashboardView",
                                   selection: $categoriesViewModel.nextScreen,
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

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
