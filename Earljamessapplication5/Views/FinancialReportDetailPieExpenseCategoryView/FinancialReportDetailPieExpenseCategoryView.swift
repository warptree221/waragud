import SwiftUI

struct FinancialReportDetailPieExpenseCategoryView: View {
    @StateObject var financialReportDetailPieExpenseCategoryViewModel =
        FinancialReportDetailPieExpenseCategoryViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        HStack {
                            HStack {
                                Image("img_arrowleft")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(16.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(4.0))
                                    .onTapGesture {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }
                                Text(StringConstants.kMsgFinancialRepor)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray903)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(141.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(73.0))
                            }
                            .frame(width: getRelativeWidth(238.0), height: getRelativeHeight(22.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(238.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                        .padding(.vertical, getRelativeHeight(30.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(64.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(64.0),
                       alignment: .leading)
                VStack {
                    VStack {
                        HStack {
                            HStack {
                                Spacer()
                                Image("img_vector")
                                    .resizable()
                                    .frame(width: getRelativeWidth(14.0),
                                           height: getRelativeHeight(6.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .padding(.leading, getRelativeWidth(12.0))
                                    .padding(.trailing, getRelativeWidth(8.0))
                                TextField(StringConstants.kLblMonth,
                                          text: $financialReportDetailPieExpenseCategoryViewModel
                                              .pillText)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Gray903)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                    bottomRight: 20.0)
                                    .stroke(ColorConstants.Gray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.vertical, getRelativeHeight(12.0))
                            Spacer()
                            HStack {
                                Button(action: {}, label: {
                                    Image("img_search")
                                })
                                .frame(width: getRelativeWidth(48.0),
                                       height: getRelativeWidth(48.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 8.0, bottomLeft: 8.0)
                                    .stroke(ColorConstants.Gray100, lineWidth: 1))
                                .background(RoundedCorners(topLeft: 8.0, bottomLeft: 8.0)
                                    .fill(ColorConstants.Gray50))
                                Button(action: {}, label: {
                                    Image("img_frame72")
                                })
                                .frame(width: getRelativeWidth(48.0),
                                       height: getRelativeWidth(48.0), alignment: .center)
                                .overlay(RoundedCorners(topRight: 8.0, bottomRight: 8.0)
                                    .stroke(ColorConstants.DeepPurpleA200, lineWidth: 1))
                                .background(RoundedCorners(topRight: 8.0, bottomRight: 8.0)
                                    .fill(ColorConstants.DeepPurpleA200))
                            }
                            .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(8.0))
                            .padding(.trailing, getRelativeWidth(14.0))
                        }
                        .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(64.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .padding(.top, getRelativeHeight(8.0))
                        ZStack(alignment: .center) {
                            Image("img_group20")
                                .resizable()
                                .frame(width: getRelativeWidth(192.0),
                                       height: getRelativeWidth(192.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLbl332)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(32.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(84.0),
                                       height: getRelativeHeight(39.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(78.86))
                                .padding(.horizontal, getRelativeWidth(53.54))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(192.0), height: getRelativeWidth(192.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(24.0))
                        .padding(.horizontal, getRelativeWidth(77.0))
                    }
                    .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(320.0),
                           alignment: .center)
                    .background(ColorConstants.WhiteA700)
                    .padding(.trailing, getRelativeWidth(14.0))
                    ZStack(alignment: .center) {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(167.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 24.0, topRight: 24.0,
                                                       bottomLeft: 24.0, bottomRight: 24.0)
                                    .fill(ColorConstants.DeepPurpleA200))
                            .padding(.leading, getRelativeWidth(4.0))
                            .padding(.trailing, getRelativeWidth(171.0))
                        HStack {
                            VStack {
                                Text(StringConstants.kLblExpense)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray50)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(66.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(20.0),
                                   alignment: .bottom)
                            .clipShape(Capsule())
                            .padding(.leading, getRelativeWidth(50.0))
                            VStack {
                                Text(StringConstants.kLblIncome)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(57.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(57.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .clipShape(Capsule())
                            .padding(.leading, getRelativeWidth(105.0))
                            .padding(.trailing, getRelativeWidth(55.0))
                        }
                        .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(48.0),
                               alignment: .center)
                        .padding(.all, getRelativeWidth(4.0))
                        .padding(.vertical, getRelativeHeight(4.0))
                        .padding(.horizontal, getRelativeWidth(4.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(56.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 28.0, topRight: 28.0, bottomLeft: 28.0,
                                               bottomRight: 28.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.top, getRelativeHeight(29.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(405.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(29.0))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Spacer()
                            Image("img_vector")
                                .resizable()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeHeight(6.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(12.0))
                                .padding(.trailing, getRelativeWidth(8.0))
                            TextField(StringConstants.kLblCategory,
                                      text: $financialReportDetailPieExpenseCategoryViewModel
                                          .pilloneText)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.Gray903)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                bottomRight: 20.0)
                                .stroke(ColorConstants.Gray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                   bottomRight: 20.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(16.0))
                        Spacer()
                        Button(action: {}, label: {
                            Image("img_buttonicon")
                        })
                        .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                bottomRight: 8.0)
                                .stroke(ColorConstants.Gray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.trailing, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(64.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(64.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(8.0))
                VStack {
                    HStack {
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeWidth(14.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(ColorConstants.AmberA700))
                                .padding(.leading, getRelativeWidth(8.0))
                            Text(StringConstants.kLblShopping)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray903)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(64.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(7.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                        }
                        .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(34.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 17.0, topRight: 17.0, bottomLeft: 17.0,
                                                bottomRight: 17.0)
                                .stroke(ColorConstants.Gray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 17.0, topRight: 17.0, bottomLeft: 17.0,
                                                   bottomRight: 17.0)
                                .fill(ColorConstants.Gray50))
                        Spacer()
                        Text(StringConstants.kLbl120)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(24.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Red500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(34.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(16.0))
                    Image("img_progressbar")
                        .resizable()
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    HStack {
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeWidth(14.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(ColorConstants.DeepPurpleA200))
                                .padding(.leading, getRelativeWidth(8.0))
                            Text(StringConstants.kLblSubcription)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray903)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(76.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(7.0))
                                .padding(.trailing, getRelativeWidth(13.0))
                        }
                        .frame(width: getRelativeWidth(119.0), height: getRelativeHeight(34.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 17.0, topRight: 17.0, bottomLeft: 17.0,
                                                bottomRight: 17.0)
                                .stroke(ColorConstants.Gray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 17.0, topRight: 17.0, bottomLeft: 17.0,
                                                   bottomRight: 17.0)
                                .fill(ColorConstants.Gray50))
                        Spacer()
                        Text(StringConstants.kLbl80)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(24.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Red500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(34.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(24.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(108.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(21.0))
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_progressbar_gray_100")
                        .resizable()
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(1.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(16.0))
                VStack {
                    HStack {
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeWidth(14.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(ColorConstants.Red500))
                                .padding(.leading, getRelativeWidth(8.0))
                            Text(StringConstants.kLblFood)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray903)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(33.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(7.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                        }
                        .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(34.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 17.0, topRight: 17.0, bottomLeft: 17.0,
                                                bottomRight: 17.0)
                                .stroke(ColorConstants.Gray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 17.0, topRight: 17.0, bottomLeft: 17.0,
                                                   bottomRight: 17.0)
                                .fill(ColorConstants.Gray50))
                        Spacer()
                        Text(StringConstants.kLbl32)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(24.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Red500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(34.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(16.0))
                    Image("img_progressbar_gray_100_1x343")
                        .resizable()
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(50.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(24.0))
            }
            .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
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

struct FinancialReportDetailPieExpenseCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        FinancialReportDetailPieExpenseCategoryView()
    }
}
