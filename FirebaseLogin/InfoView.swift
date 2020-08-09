import SwiftUI
import Foundation
import WebKit
import Firebase


var globalArticleName1 = ""
var globalArticleName2 = ""
var globalArticleName3 = ""
var globalArticleName4 = ""
var globalArticleURL1 = ""
var globalArticleURL2 = ""
var globalArticleURL3 = ""
var globalArticleURL4 = ""
var globalURL = ""

struct InfoView: View {
   
       
    @State var showTitle = true
    
    init() {
        UINavigationBar.appearance().tintColor = UIColor(red: 133/255, green: 183/255, blue: 145/256, alpha: 1.0)
        showTitle = true
    }
    var body: some View {
    VStack {
        if (showTitle) {
           Text("About")
           .foregroundColor(greenColor)
           .fontWeight(.semibold).font(.largeTitle)
           .frame(maxWidth: 400, maxHeight: 30, alignment: Alignment.topLeading)
        }
        Spacer()
            NavigationView {
                Group {
                VStack {
                    Spacer()
                    NavigationLink(destination: Webview(url: globalArticleURL1)
                    .onDisappear() {
                        self.showTitle = true
                    }) {
                        Text(globalArticleName1)
                    }.simultaneousGesture(TapGesture().onEnded{
                        self.showTitle = false
                    })
                    Group {
                    Spacer()
                    NavigationLink(destination: Webview(url: globalArticleURL2)
                    .onDisappear() {
                        self.showTitle = true
                    }) {
                        
                        Text(globalArticleName2)
                    }.simultaneousGesture(TapGesture().onEnded{
                        self.showTitle = false
                    })
                    Spacer()
                    NavigationLink(destination: Webview(url: globalArticleURL3)
                    .onDisappear() {
                        self.showTitle = true
                    }) {
                        
                        Text(globalArticleName3)
                    }.simultaneousGesture(TapGesture().onEnded{
                        self.showTitle = false
                    })
                    Spacer()
                    NavigationLink(destination: Webview(url: globalArticleURL4)
                    .onDisappear() {
                        self.showTitle = true
                    }) {
                        
                        Text(globalArticleName4)
                    }.simultaneousGesture(TapGesture().onEnded{
                        self.showTitle = false
                    })
                    Spacer()
                    }
                    NavigationLink(destination: Webview(url: globalURL)
                    .onDisappear() {
                        self.showTitle = true
                    }) {
                        Text("Amir Khoddamzadeh's website")
                    }.simultaneousGesture(TapGesture().onEnded{
                        self.showTitle = false
                    })
                  Spacer()
                }
                .accentColor(greenColor)
            }
            }
            .frame(maxHeight: .infinity)
            Spacer()
        }
    }
    
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct Webview: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview
    }
    
    func updateUIView(_ uiView: Webview.UIViewType, context: UIViewRepresentableContext<Webview>) {
        
    }
}
