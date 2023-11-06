//
//  CreateUser.swift
//  BakimKarti
//
//  Created by Ali Osman GÖK on 2.11.2023.
//

import SwiftUI

struct CreateUser: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @State private var sirket: String = ""
    @State private var plaka: String = ""
    @State private var km: String = ""
    @State private var nextkm: String = ""
    @State private var oil: String = ""
    @State private var havaf: Bool = false
    @State private var yagf: Bool = false
    @State private var yakitf: Bool = false
    @State private var polenf: Bool = false
    @State private var antifiriz: Bool = false
    @State private var sanziman: Bool = false
    @State private var debriyaj: Bool = false
    @State private var buji: Bool = false
    @State private var arkafren: Bool = false
    @State private var onfren: Bool = false
    @State private var triger: Bool = false
    @State private var direksiyon: Bool = false
    @State private var vkayis: Bool = false
    @State private var diferansiyel: Bool = false
    @State private var notes: String = ""
    @State private var tarih: String = ""


    var body: some View {
        ScrollView{
         
            TextField("İşyeri Adı", text: $sirket)
                .textFieldStyle(.roundedBorder)
            TextField("Plaka", text: $plaka)
                .textFieldStyle(.roundedBorder)
            TextField("Kilometre", text: $km)
                .textFieldStyle(.roundedBorder)
            TextField("Sonraki Kilometre", text: $nextkm)
                .textFieldStyle(.roundedBorder)
            TextField("Motor Yağı", text: $oil)
                .textFieldStyle(.roundedBorder)
            
            HStack{
                Toggle(isOn:$havaf){
                    Text("Hava Filtresi")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$yagf){
                    Text("Yağ Filtresi")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$yakitf){
                    Text("Yakıt Filtresi")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$polenf){
                    Text("Polen Filtresi")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$antifiriz){
                    Text("Antifiriz")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$sanziman){
                    Text("Şanzıman Yağı")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$debriyaj){
                    Text("Debriyaj seti")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$buji){
                    Text("Buji")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$arkafren){
                    Text("Arka Fren Balatası")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$onfren){
                    Text("Ön Fren Balatası")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$triger){
                    Text("Triger Seti")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$direksiyon){
                    Text("Direksiyon Yağı")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            HStack{
                Toggle(isOn:$vkayis){
                    Text("V Kayışı")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)
                Divider()
                Toggle(isOn:$diferansiyel){
                    Text("Diferansiyel Yağı")
                }
                .toggleStyle(.button)
                .foregroundStyle(.black)

                }
            TextField("Bakım Notu:", text: $notes)
                .textFieldStyle(.roundedBorder)

            Spacer()
        }
        .padding(20)
        .navigationTitle("Yeni Kayıt")
        .toolbar {
            Button(action: {
                let tarihs = Date.now.formatted(.dateTime.day().month().year())
                let user = User(sirket:sirket, plaka: plaka, km: km, nextkm: nextkm, oil: oil, havaf: havaf, yagf: yagf, yakitf: yakitf, polenf: polenf, antifiriz: antifiriz, sanziman: sanziman, debriyaj: debriyaj, buji: buji, arkafren: arkafren, onfren: onfren, triger: triger, direksiyon: direksiyon, vkayis: vkayis, diferansiyel: diferansiyel, notes: notes, tarih:tarihs )
                modelContext.insert(user)
                do {
                    try modelContext.save()
                    presentationMode.wrappedValue.dismiss()
                } catch {
                    print(error.localizedDescription)
                }
            }, label: {
                Text("Kaydet")
            })
        }
    }
}

#Preview {
    CreateUser()
}
