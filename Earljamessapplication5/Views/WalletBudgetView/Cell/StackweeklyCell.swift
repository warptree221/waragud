import SwiftUI

struct StackweeklyCell: View {
    var body: some View {
        ZStack(alignment: .center) {
            VStack {
                HStack {
                    Text(StringConstants.kLblWeekly2)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(19.62963)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(24.0),
                               alignment: .leading)
                    Spacer()
                    Text(StringConstants.kLblActiveWallet)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(10.625)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.LightBlue50)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(13.0),
                               alignment: .leading)
                        .padding(.vertical, getRelativeHeight(3.0))
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(24.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(10.0))
                .padding(.horizontal, getRelativeWidth(17.0))
                VStack {
                    ZStack(alignment: .leading) {
                        VStack {
                            Text(StringConstants.kLbl65)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(11.011744)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(21.0),
                                       height: getRelativeHeight(14.0), alignment: .leading)
                                .padding(.horizontal, getRelativeWidth(10.0))
                            Text(StringConstants.kMsgYouHaveARema)
                                .font(FontScheme.kInterLight(size: getRelativeHeight(7.918557)))
                                .fontWeight(.light)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(115.0),
                                       height: getRelativeHeight(10.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(10.0))
                            Text(StringConstants.kLblPhp87500)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(24.316576)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(138.0),
                                       height: getRelativeHeight(30.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(77.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(37.0))
                        .padding(.leading, getRelativeWidth(57.0))
                        .padding(.trailing, getRelativeWidth(52.0))
                        Image("img_vector_blue_300")
                            .resizable()
                            .frame(width: getRelativeWidth(247.0), height: getRelativeHeight(125.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(247.0), height: getRelativeHeight(125.0),
                           alignment: .leading)
                    HStack {
                        Text(StringConstants.kLbl0)
                            .font(FontScheme.kInterLight(size: getRelativeHeight(7.918557)))
                            .fontWeight(.light)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(9.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                        Spacer()
                        Text(StringConstants.kLbl100)
                            .font(FontScheme.kInterLight(size: getRelativeHeight(7.918557)))
                            .fontWeight(.light)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(17.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(244.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(6.0))
                    .padding(.leading, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(249.0), height: getRelativeHeight(142.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                           bottomRight: 20.0))
                .padding(.vertical, getRelativeHeight(12.0))
                .padding(.horizontal, getRelativeWidth(17.0))
            }
            .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(219.0),
                   alignment: .leading)
            .overlay(RoundedCorners(topLeft: 6.12, topRight: 6.12, bottomLeft: 6.12,
                                    bottomRight: 6.12)
                    .stroke(ColorConstants.Black900,
                            lineWidth: 1))
            .background(RoundedCorners(topLeft: 6.12, topRight: 6.12, bottomLeft: 6.12,
                                       bottomRight: 6.12)
                    .fill(ColorConstants.LightBlue50))
            .padding(.bottom, getRelativeHeight(23.0))
            ZStack(alignment: .center) {
                Image("img_group2331")
                    .resizable()
                    .frame(width: getRelativeWidth(286.0), height: getRelativeHeight(45.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 5.99, topRight: 5.99, bottomLeft: 5.99,
                                               bottomRight: 5.99))
                HStack {
                    VStack {
                        Text(StringConstants.kLblBudget)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(8.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(25.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(36.0))
                        Text(StringConstants.kLblPhp250000)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(15.173662)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(29.0),
                           alignment: .leading)
                    VStack {
                        Text(StringConstants.kLblExpense)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(8.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(30.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(27.0))
                        Text(StringConstants.kLblPhp162500)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(15.173662)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(29.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(42.0))
                }
                .frame(width: getRelativeWidth(236.0), height: getRelativeHeight(29.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(7.91))
                .padding(.bottom, getRelativeHeight(8.09))
                .padding(.horizontal, getRelativeWidth(24.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(286.0), height: getRelativeHeight(45.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(197.0))
            .padding(.horizontal, getRelativeWidth(36.0))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(359.0), alignment: .leading)
    }
}

/* struct StackweeklyCell_Previews: PreviewProvider {

 static var previews: some View {
 			StackweeklyCell()
 }
 } */
