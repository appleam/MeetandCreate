import SwiftUI

struct ChatBubbleShape: Shape {
    enum Direction {
        case left
        case right
    }

    var direction: Direction

    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let tailWidth: CGFloat = 0
        let cornerRadius: CGFloat = 12
        let tailHeight: CGFloat = rect.height / 2
        
        switch direction {
        case .left:
            // Define path for left bubble here
            break
        case .right:
            path.move(to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX - tailWidth - cornerRadius, y: rect.minY))
            path.addArc(center: CGPoint(x: rect.maxX - tailWidth - cornerRadius, y: rect.minY + cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
            path.addLine(to: CGPoint(x: rect.maxX - tailWidth, y: rect.maxY - cornerRadius))
            path.addArc(center: CGPoint(x: rect.maxX - tailWidth - cornerRadius, y: rect.maxY - cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
            
            // Tail
            path.addLine(to: CGPoint(x: rect.maxX - tailWidth, y: rect.maxY - tailHeight))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - tailHeight))
            path.addLine(to: CGPoint(x: rect.maxX - tailWidth, y: rect.maxY))
            
            path.addLine(to: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY))
            path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY - cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
            path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + cornerRadius))
            path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.minY + cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
            path.closeSubpath()
        }
        
        return path
    }
}

struct ChatMessage: Identifiable {
    let id = UUID()
    let text: String
    let isCurrentUser: Bool
}

struct ChatBubble: View {
    let message: ChatMessage
    
    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
                Text(message.text)
                    .padding(10)
                    .background(Color.orange)
                    .clipShape(ChatBubbleShape(direction: .right))
                    .foregroundColor(.white)
            } else {
                Text(message.text)
                    .padding(10)
                    .background(Color.gray)
                    .clipShape(ChatBubbleShape(direction: .left))
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
}

struct messages: View {
    
    @State private var messages: [ChatMessage] = []
    @State private var newMessageText: String = ""
    
    var body: some View {
        ZStack{
            VStack {
                VStack(alignment: .leading) {
                    Text("Meet and Create💡")
                        .font(.system(size: 30, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .padding(.leading, 20)
                        .padding(.top, 32)
                    
                    Divider()
                        .background(Color.gray)
                        .frame(height: 1)
                        .padding(.bottom, 5)
                }
                HStack(spacing: 16){
                    VStack{
                        
                        Image("avayou")
                            .scaleEffect(0.25)
                            .scaledToFit()
                            .frame(width: 40, height: 35)
                            .padding(.top, 1)
                        //                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        
                        Text("")
                            .font(.system(size: 11, weight: .regular))
                            .foregroundColor(.black)
                    }
                    //                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    
                    VStack{
                        
                        Image("ava1")
                            .scaleEffect(0.25)
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding(.top, 10)
                        //                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        Text("")
                            .font(.system(size: 11, weight: .regular))
                            .foregroundColor(.black)
                    }
                    //                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    VStack{
                        
                        Image("ava2")
                            .scaleEffect(0.25)
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding(.top, 10)
                        Text("")
                            .font(.system(size: 11, weight: .regular))
                            .foregroundColor(.black)
                    }
                    VStack{
                        
                        Image("ava3")
                            .scaleEffect(0.25)
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding(.top, 15)
                        Text("")
                            .font(.system(size: 11, weight: .regular))
                            .foregroundColor(.black)
                    }
                }
                .offset(x:-75, y:-5)
                ScrollView {
                    VStack(spacing: 12) {
                        Image("chatprev")
                            .resizable()
                            .scaledToFit()
                            .frame(width:380,alignment:.center)
                            
                        ForEach(messages) { message in
                            ChatBubble(message: message)
                        }
                    }
                    .padding()
                }
                
                ZStack {
                    TextField("Chat", text: $newMessageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    
                    Button(action: sendMessage) {
                        Image(systemName: "arrow.up.circle.fill")
                            .resizable()
                        
                            .foregroundColor(Color.orange)
                            .frame(width: 25, height: 25)
                        
                    }
                    .padding(.leading,317)
                }
                //.padding(.bottom,50)
                //activate if no space
                .padding()
                
            }
//            Button(action: {
//                // Action to perform when the button is tapped
//            }) {
//
//                Image(systemName: "info.circle") // System icon named 'info.circle'
//                        .resizable() // Make the image resizable
//                        .scaledToFit() // Scale the image to fit within the frame
//                        .frame(width: 25, height: 25) // Set the frame size for the image
//
//            }
//
//            .padding(.leading,310)
//            .padding(.bottom,580)
//
            
        }
        
    }
    
    func sendMessage() {
        if !newMessageText.isEmpty {
            let newMessage = ChatMessage(text: newMessageText, isCurrentUser: true)
            messages.append(newMessage)
            newMessageText = ""
        }
    }
}
    

struct messagess: PreviewProvider {
    static var previews: some View {
        messages()
    }
}
