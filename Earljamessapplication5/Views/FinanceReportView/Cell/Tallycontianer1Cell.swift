import SwiftUI

struct Tallycontianer1Cell: View {
    var body: some View {
        HStack {
            HStack {
                Button(action: {}, label: {
                    Image("img_vector_gray_501")
                })
                .frame(width: getRelativeWidth(38.0), height: getRelativeWidth(40.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 4.618483, topRight: 2.3092415,
                                        bottomLeft: 2.3092415,
                                        bottomRight: 2.3092415)
                        .stroke(ColorConstants.Gray905, lineWidth: 1))
                .background(RoundedCorners(topLeft: 4.618483, topRight: 2.3092415,
                                           bottomLeft: 2.3092415,
                                           bottomRight: 2.3092415).fill(ColorConstants.WhiteA700))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblFood)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(14.144106)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(31.0), height: getRelativeHeight(18.0),
                               alignment: .leading)
                        .padding(.trailing)
                    Text(StringConstants.kLblJan302022)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(11.113225)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(14.0),
                               alignment: .leading)
                }
                .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(33.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(40.0),
                   alignment: .leading)
            Text(StringConstants.kLbl5900)
                .font(FontScheme.kInterMedium(size: getRelativeHeight(14.144106)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Red900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(59.0), height: getRelativeHeight(18.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(144.0))
        }
        .frame(width: getRelativeWidth(321.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Tallycontianer1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Tallycontianer1Cell()
 }
 } */
