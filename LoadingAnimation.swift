
import SwiftUI
import DeveloperToolsSupport

struct AnimatedLoadingIndicator: View {
  @State private var isLoading = false
 
      var body: some View {
      ZStack {
      Circle()
      .trim(from: 0, to: 0.2)
      .stroke(Color.green, lineWidth: 16)
      .frame(width: 100, height: 100)
      .rotationEffect(Angle(degrees: isLoading ? 0 : 0))
      .shadow(radius: 10)
      .offset(x: 5, y: 5)
     
      Circle()
      .trim(from: 0.5, to: 0.7)
      .stroke(Color.green, lineWidth: 16)
      .frame(width: 100, height: 100)
      .rotationEffect(Angle(degrees: isLoading ? 0 : 0))
      .shadow(radius: 10)
      .offset(x: -5, y: -5)
     
      Circle()
      .trim(from: 0, to: 0.4)
      .stroke(Color.blue, lineWidth: 8)
      .frame(width: 90, height: 90)
      .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
     
      Circle()
      .trim(from: 0, to: 0.5)
      .stroke(Color.yellow, lineWidth: 7)
      .frame(width: 80, height: 80)
      .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
     
      }
      .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
      .onAppear {
      isLoading.toggle()
        }
      }
}

struct AnimatedLoadingIndicator_Previews: PreviewProvider {
  static var previews: some View {
  AnimatedLoadingIndicator()
  }
}

struct AnimatedLoadingIndicatorView: LibraryContentProvider {

  @LibraryContentBuilder var views: [LibraryItem] {
  
    LibraryItem(AnimatedLoadingIndicator(),
        title: "Custom animated Loading View",
        category: .other
        )
  
    }
}
