import SwiftUI

struct TallycontianerCell: View {
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    Image("img_vector_gray_501")
                        .resizable()
                        .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(25.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.horizontal, getRelativeWidth(1.2))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(26.0), height: getRelativeWidth(28.0),
                       alignment: .leading)
                .overlay(RoundedCorners(topLeft: 3.228964, topRight: 1.614482, bottomLeft: 1.614482,
                                        bottomRight: 1.614482).stroke(ColorConstants.Gray905,
                                                                      lineWidth: 1))
                .background(RoundedCorners(topLeft: 3.228964, topRight: 1.614482,
                                           bottomLeft: 1.614482,
                                           bottomRight: 1.614482).fill(ColorConstants.WhiteA700))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblFood)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(9.888703)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(21.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .padding(.trailing)
                    Text(StringConstants.kLblJan302022)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(7.769695)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                }
                .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(22.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(6.0))
            }
            .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(28.0),
                   alignment: .leading)
            Text(StringConstants.kLbl5900)
                .font(FontScheme.kInterMedium(size: getRelativeHeight(9.888703)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Red900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(12.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(100.0))
        }
        .frame(width: getRelativeWidth(224.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct TallycontianerCell_Previews: PreviewProvider {

 static var previews: some View {
 			TallycontianerCell()
 }
 } */
