//
//  CardView.swift
//  BakimKarti
//
//  Created by Ali Osman GÖK on 2.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State var user: User
    @Environment(\.displayScale) var displayScale
    @State var detail = false
    @State private var sheetPresented : Bool = false
    

    var body: some View {

        
        ScrollView{
            RenderView(user: user)
            .toolbar{
                Button(action: {
                    self.sheetPresented = true
                }){
                        Text("\(Image(systemName: "square.and.arrow.up")) Paylaş    ")
                        .foregroundStyle(Color.red)
                }
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .fullScreenCover(isPresented: $detail){
            EditUser(user: user)
        }
        .sheet(isPresented: $sheetPresented, content: {
                
            if let data = render() {
       
                ShareView(activityItems: [data])
           
            }
            
        })
    
    }
}





extension ContentView {
  
    @MainActor
    private func render() -> UIImage?{
        
        let renderer = ImageRenderer(content: RenderView(user: user))

        renderer.scale = displayScale
     
        return renderer.uiImage
    }
}

