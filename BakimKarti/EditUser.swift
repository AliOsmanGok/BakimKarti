//
//  EditUser.swift
//  BakimKarti
//
//  Created by Ali Osman GÖK on 2.11.2023.
//
import SwiftUI

struct EditUser: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var user: User
    @State var card = false
    
    var body: some View {
        ScrollView{
            TextField("İşyeri Adı", text: $user.sirket)
                .textFieldStyle(.roundedBorder)
            TextField("Plaka", text: $user.plaka)
                .textFieldStyle(.roundedBorder)
            TextField("Kilometre", text: $user.km)
                .textFieldStyle(.roundedBorder)
            TextField("Sonraki Kilometre", text: $user.nextkm)
                .textFieldStyle(.roundedBorder)
            TextField("Motor Yağı", text: $user.oil)
                .textFieldStyle(.roundedBorder)
            HStack{
                Toggle(isOn:$user.havaf){
                    Text("Hava Filtresi")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$user.yagf){
                    Text("Yağ Filtresi")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$user.yakitf){
                    Text("Yakıt Filtresi")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$user.polenf){
                    Text("Polen Filtresi")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$user.antifiriz){
                    Text("Antifiriz")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$user.sanziman){
                    Text("Şanzıman Yağı")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$user.debriyaj){
                    Text("Debriyaj seti")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$user.buji){
                    Text("Buji")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$user.arkafren){
                    Text("Arka Fren Balatası")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$user.onfren){
                    Text("Ön Fren Balatası")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$user.triger){
                    Text("Triger Seti")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$user.direksiyon){
                    Text("Direksiyon Yağı")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$user.vkayis){
                    Text("V Kayışı")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$user.diferansiyel){
                    Text("Diferansiyel Yağı")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            TextField("Bakım Notu: ", text: $user.notes)
                .textFieldStyle(.roundedBorder)
            NavigationLink{
                ContentView(user:user)
            }label: {
                Text("Bakım Kartı >")
            }.padding()
            Spacer()
        }
        .fullScreenCover(isPresented: $card){
            ContentView(user: user)
        }
        .padding(20)
        .toolbar {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Güncelle")
            })
        }

    }
    

}
