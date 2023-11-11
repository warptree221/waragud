import SwiftUI

struct ColumnlanguageCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text(StringConstants.kLblWeekly)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(8.916786)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(46.0), height: getRelativeHeight(13.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kMsgSetGoalPhp)
                    .font(FontScheme.kInterMedium(size: getRelativeHeight(8.817115)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(11.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(13.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(18.0))
            .padding(.horizontal, getRelativeWidth(13.0))
            ZStack(alignment: .leading) {
                VStack {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(179.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                bottomRight: 4.0)
                                .stroke(ColorConstants.Black900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0)
                                .fill(ColorConstants.Green200))
                        .padding(.trailing, getRelativeWidth(90.0))
                }
                .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(22.0),
                       alignment: .leading)
                .overlay(RoundedCorners(topLeft: 3.83, topRight: 3.83, bottomLeft: 3.83,
                                        bottomRight: 3.83)
                        .stroke(ColorConstants.Black900,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 3.83, topRight: 3.83, bottomLeft: 3.83,
                                           bottomRight: 3.83)
                        .fill(ColorConstants.WhiteA700))
                VStack {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(43.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                bottomRight: 4.0)
                                .stroke(ColorConstants.Black900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0)
                                .fill(ColorConstants.Green200))
                        .padding(.trailing, getRelativeWidth(226.0))
                }
                .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(22.0),
                       alignment: .leading)
                .overlay(RoundedCorners(topLeft: 3.83, topRight: 3.83, bottomLeft: 3.83,
                                        bottomRight: 3.83)
                        .stroke(ColorConstants.Black900,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 3.83, topRight: 3.83, bottomLeft: 3.83,
                                           bottomRight: 3.83)
                        .fill(ColorConstants.WhiteA700))
                Text(StringConstants.kLbl11)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(13.800701)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(23.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(3.24))
                    .padding(.trailing, getRelativeWidth(236.49))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(22.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(5.0))
            .padding(.horizontal, getRelativeWidth(13.0))
            RadioGroup(items: [StringConstants.kLblSaved, StringConstants.kLblRemaining],
                       selectedId: .constant(""), selectedColor: Color.blue)
                .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(2.0))
                .padding(.horizontal, getRelativeWidth(13.0))
            RadioGroup(items: [StringConstants.kLblSaved], selectedId: .constant(""),
                       selectedColor: ColorConstants.Black900)
                .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(11.0),
                       alignment: .trailing)
                .overlay(RoundedCorners().stroke(ColorConstants.Black900, lineWidth: 1))
                .background(RoundedCorners().fill(ColorConstants.Green200))
            RadioGroup(items: [StringConstants.kLblRemaining], selectedId: .constant(""),
                       selectedColor: ColorConstants.Black900)
                .frame(width: getRelativeWidth(54.0), height: getRelativeHeight(11.0),
                       alignment: .topLeading)
                .overlay(RoundedCorners().stroke(ColorConstants.Black900, lineWidth: 1))
                .background(RoundedCorners().fill(ColorConstants.WhiteA700))
                .padding(.leading, getRelativeWidth(9.0))
                .padding(.trailing, getRelativeWidth(6.0))
        }
        .frame(width: getRelativeWidth(296.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 3.83, topRight: 3.83, bottomLeft: 3.83, bottomRight: 3.83)
            .stroke(ColorConstants.Black900,
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 3.83, topRight: 3.83, bottomLeft: 3.83,
                                   bottomRight: 3.83)
                .fill(ColorConstants.Green50))
        .hideNavigationBar()
    }
}

/* struct ColumnlanguageCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnlanguageCell()
 }
 } */
