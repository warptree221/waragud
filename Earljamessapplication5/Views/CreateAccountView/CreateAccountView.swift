import SwiftUI

struct CreateAccountView: View {
    @StateObject var createAccountViewModel = CreateAccountViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        ZStack(alignment: .topTrailing) {
                            Text(StringConstants.kLblLogo)
                                .font(FontScheme.kInterExtraBold(size: getRelativeHeight(87.75878)))
                                .fontWeight(.heavy)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(252.0),
                                       height: getRelativeHeight(107.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(15.42))
                                .padding(.trailing, getRelativeWidth(21.0))
                            Text(StringConstants.kLblTigum)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(33.604603)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(112.0),
                                       height: getRelativeHeight(35.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(87.0))
                                .padding(.leading, getRelativeWidth(161.75))
                            Text(StringConstants.kLblPinas)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(22.403069)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeHeight(70.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(35.88))
                                .padding(.leading, getRelativeWidth(252.96))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(273.0), height: getRelativeHeight(122.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(122.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(140.0))
                    .padding(.horizontal, getRelativeWidth(52.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblName)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(15.506027)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(6.0))
                            .padding(.trailing, getRelativeWidth(6.0))
                    }
                    .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(19.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(48.0))
                    .padding(.horizontal, getRelativeWidth(52.0))
                    VStack {
                        HStack {
                            TextField(StringConstants.kLblJuanDelaCruz,
                                      text: $createAccountViewModel.frame40640Text)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(11.981931)))
                                .foregroundColor(ColorConstants.Bluegray700)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(42.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 5.99, topRight: 5.99, bottomLeft: 5.99,
                                                bottomRight: 5.99)
                                .stroke(ColorConstants.Bluegray700,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.99, topRight: 5.99, bottomLeft: 5.99,
                                                   bottomRight: 5.99)
                                .fill(Color.clear.opacity(0.7)))
                    }
                    .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(42.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(6.0))
                    .padding(.horizontal, getRelativeWidth(52.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblEmailAddress)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(15.506027)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(106.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(6.0))
                            .padding(.trailing, getRelativeWidth(6.0))
                    }
                    .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(19.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(19.0))
                    .padding(.horizontal, getRelativeWidth(52.0))
                    VStack {
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgJohndoeEmailC,
                                          text: $createAccountViewModel.emailText)
                                    .font(FontScheme
                                        .kInterRegular(size: getRelativeHeight(11.981931)))
                                    .foregroundColor(ColorConstants.Black900)
                                    .padding()
                                    .keyboardType(.emailAddress)
                            }
                            .onChange(of: createAccountViewModel.emailText) { newValue in

                                createAccountViewModel.isValidEmailText = newValue
                                    .isValidEmail(isMandatory: true)
                            }
                            .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(42.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.99, topRight: 5.99, bottomLeft: 5.99,
                                                    bottomRight: 5.99)
                                    .stroke(ColorConstants.Bluegray700,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.99, topRight: 5.99,
                                                       bottomLeft: 5.99, bottomRight: 5.99)
                                    .fill(Color.clear.opacity(0.7)))
                            if !createAccountViewModel.isValidEmailText {
                                Text("Please enter valid email.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme
                                        .kInterRegular(size: getRelativeHeight(11.981931)))
                                    .frame(width: getRelativeWidth(325.0),
                                           height: getRelativeHeight(42.0), alignment: .center)
                            }
                        }
                        HStack {
                            Text(StringConstants.kLblPassword)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(15.506027)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(72.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kMsgForgotPassword)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(9.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(77.0),
                                       height: getRelativeHeight(11.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(308.0), height: getRelativeHeight(19.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(19.0))
                        .padding(.leading, getRelativeWidth(7.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                        HStack {
                            TextField(StringConstants.kLbl,
                                      text: $createAccountViewModel.frame40650Text)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(4.2011647)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                            Image("img_icon_eye")
                                .resizable()
                                .frame(width: getRelativeWidth(16.0),
                                       height: getRelativeHeight(11.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(14.0))
                                .padding(.bottom, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(17.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(42.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 5.99, topRight: 5.99, bottomLeft: 5.99,
                                                bottomRight: 5.99)
                                .stroke(ColorConstants.Bluegray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.99, topRight: 5.99, bottomLeft: 5.99,
                                                   bottomRight: 5.99)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(129.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(6.0))
                    .padding(.horizontal, getRelativeWidth(52.0))
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Button(action: {}, label: {
                                Image("img_shape")
                            })
                            .frame(width: getRelativeWidth(15.0), height: getRelativeWidth(15.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 1.55, topRight: 1.55,
                                                       bottomLeft: 1.55, bottomRight: 1.55)
                                    .fill(ColorConstants.Black900))
                            Text(StringConstants.kMsgDoYouAgreeWi)
                                .font(FontScheme.kInterLight(size: getRelativeHeight(16.0)))
                                .fontWeight(.light)
                                .foregroundColor(ColorConstants.Bluegray401)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(259.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(6.0))
                        }
                        .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(20.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(4.0))
                        .padding(.trailing, getRelativeWidth(4.0))
                    }
                    .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(20.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(34.0))
                    .padding(.horizontal, getRelativeWidth(52.0))
                    VStack {
                        Button(action: {
                            createAccountViewModel.nextScreen = "WelcomeView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSignUp)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(11.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(325.0),
                                           height: getRelativeHeight(42.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 5.99, topRight: 5.99,
                                                               bottomLeft: 5.99, bottomRight: 5.99)
                                            .fill(ColorConstants.Black900))
                            }
                        })
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(42.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 5.99, topRight: 5.99, bottomLeft: 5.99,
                                                   bottomRight: 5.99)
                                .fill(ColorConstants.Black900))
                        Text(StringConstants.kMsgAlreadyHaveAn)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(11.858126)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray701)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(186.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(84.0))
                            .padding(.horizontal, getRelativeWidth(69.0))
                            .onTapGesture {
                                createAccountViewModel.nextScreen = "LoginView"
                            }
                    }
                    .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(141.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(2.0))
                    .padding(.horizontal, getRelativeWidth(52.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: WelcomeView(),
                                   tag: "WelcomeView",
                                   selection: $createAccountViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LoginView(),
                                   tag: "LoginView",
                                   selection: $createAccountViewModel.nextScreen,
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

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
