import SwiftUI

struct AccountandSettingsView: View {
    @StateObject var accountandSettingsViewModel = AccountandSettingsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .trailing, spacing: 0) {
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
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                               alignment: .leading)
                        .background(ColorConstants.Bluegray100)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(19.0))
                VStack {
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblKamusta)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(11.820359)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(53.0),
                                       height: getRelativeHeight(13.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kMsgEnjelinMorgean)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.886227)))
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
                            .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(31.0),
                                   alignment: .center)
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
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                               alignment: .leading)
                        .background(ColorConstants.Bluegray100)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(10.0))
                VStack(alignment: .trailing, spacing: 0) {
                    ZStack(alignment: .leading) {
                        Image("img_rectangle2053")
                            .resizable()
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(55.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(70.0))
                        Image("img_image16")
                            .resizable()
                            .frame(width: getRelativeWidth(382.0), height: getRelativeHeight(162.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.trailing, getRelativeWidth(16.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(398.0), height: getRelativeHeight(162.0),
                           alignment: .trailing)
                    .padding(.leading)
                    .padding(.leading)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(162.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(581.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct AccountandSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AccountandSettingsView()
    }
}
