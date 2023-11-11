import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
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
                    .padding(.top, getRelativeHeight(47.0))
                    .padding(.horizontal, getRelativeWidth(52.0))
                    VStack {
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgJohndoeEmailC,
                                          text: $loginViewModel.emailText)
                                    .font(FontScheme
                                        .kInterRegular(size: getRelativeHeight(11.981931)))
                                    .foregroundColor(ColorConstants.Black900)
                                    .padding()
                                    .keyboardType(.emailAddress)
                            }
                            .onChange(of: loginViewModel.emailText) { newValue in

                                loginViewModel.isValidEmailText = newValue
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
                            if !loginViewModel.isValidEmailText {
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
                        Group {
                            HStack {
                                TextField(StringConstants.kLbl,
                                          text: $loginViewModel.frame40650Text)
                                    .font(FontScheme
                                        .kInterRegular(size: getRelativeHeight(4.2011647)))
                                    .foregroundColor(ColorConstants.Gray500)
                                    .padding()
                                    .keyboardType(.alphabet)
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
                            .onChange(of: loginViewModel.frame40650Text) { newValue in

                                loginViewModel.isValidFrame40650Text = newValue
                                    .isText(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(42.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.99, topRight: 5.99, bottomLeft: 5.99,
                                                    bottomRight: 5.99)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.99, topRight: 5.99,
                                                       bottomLeft: 5.99, bottomRight: 5.99)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(6.0))
                            if !loginViewModel.isValidFrame40650Text {
                                Text("Please enter valid text.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme
                                        .kInterRegular(size: getRelativeHeight(4.2011647)))
                                    .frame(width: getRelativeWidth(325.0),
                                           height: getRelativeHeight(42.0), alignment: .center)
                            }
                        }
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
                            Text(StringConstants.kMsgKeepMeSigned)
                                .font(FontScheme.kInterLight(size: getRelativeHeight(16.0)))
                                .fontWeight(.light)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(106.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(6.0))
                        }
                        .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(20.0),
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
                            loginViewModel.nextScreen = "DashboardView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblLogin)
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
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        })
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(42.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 5.99, topRight: 5.99, bottomLeft: 5.99,
                                                   bottomRight: 5.99)
                                .fill(ColorConstants.Black900))
                        Text(StringConstants.kMsgDonTHaveAnA)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(11.858126)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray701)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(181.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(76.0))
                            .padding(.horizontal, getRelativeWidth(72.0))
                            .onTapGesture {
                                loginViewModel.nextScreen = "CreateAccountView"
                            }
                        Text(StringConstants.kMsgSpendSmarterS)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(22.097378)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(139.0))
                            .padding(.horizontal, getRelativeWidth(72.0))
                    }
                    .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(322.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(2.0))
                    .padding(.horizontal, getRelativeWidth(52.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CreateAccountView(),
                                   tag: "CreateAccountView",
                                   selection: $loginViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DashboardView(),
                                   tag: "DashboardView",
                                   selection: $loginViewModel.nextScreen,
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
        .onAppear {
            loginViewModel.nextScreen = "CreateAccountView"
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
