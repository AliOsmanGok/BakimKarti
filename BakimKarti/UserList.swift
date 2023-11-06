//
//  UserList.swift
//  BakimKarti
//
//  Created by Ali Osman GÖK on 2.11.2023.
//
import SwiftUI
import SwiftData

@Model
class User {
    var id: UUID
    var sirket: String
    var plaka : String
    var km: String
    var nextkm: String
    var oil: String
    var havaf: Bool
    var yagf: Bool
    var yakitf: Bool
    var polenf: Bool
    var antifiriz: Bool
    var sanziman: Bool
    var debriyaj: Bool
    var buji: Bool
    var arkafren: Bool
    var onfren: Bool
    var triger: Bool
    var direksiyon: Bool
    var vkayis: Bool
    var diferansiyel: Bool
    var notes: String
    var tarih: String 

    
    init(sirket: String, plaka: String,km: String, nextkm: String, oil: String, havaf: Bool, yagf: Bool, yakitf: Bool, polenf: Bool, antifiriz: Bool, sanziman: Bool, debriyaj: Bool, buji: Bool, arkafren: Bool, onfren: Bool, triger: Bool, direksiyon: Bool, vkayis: Bool, diferansiyel: Bool,notes: String, tarih: String) {
        self.id = UUID()
        self.sirket = sirket
        self.plaka = plaka
        self.km = km
        self.nextkm = nextkm
        self.oil = oil
        self.havaf = havaf
        self.yagf = yagf
        self.yakitf = yakitf
        self.polenf = polenf
        self.antifiriz = antifiriz
        self.sanziman = sanziman
        self.debriyaj = debriyaj
        self.buji = buji
        self.arkafren = arkafren
        self.onfren = onfren
        self.triger = triger
        self.direksiyon = direksiyon
        self.vkayis = vkayis
        self.diferansiyel = diferansiyel
        self.notes = notes
        self.tarih = tarih
    }
}



struct UserList: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    @Environment(\.modelContext) private var modelContext
    @Query var users: [User]
    @State var render = false
    var body: some View {
        VStack {
            if users.isEmpty {
                VStack{
                    VStack{
                        Image("launch")
                            .resizable()
                            .frame(
                                width: UIScreen.main.bounds.width * 0.99,
                                height: UIScreen.main.bounds.height * 0.5
                            )
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        self.isActive = true
                    }
                }
            } else {
                List(users) { user in
                    NavigationLink {
                        EditUser(user: user)
                    } label: {
                        VStack(alignment: .leading) {
                            Text("\(user.plaka)")
                                .fontWeight(.bold)
                                .font(.headline)
                            Text("Tarih: \(user.tarih)")
                                .fontWeight(.regular)
                                .font(.caption)
                            HStack{
                                Text("Kilometre: \(user.km) - Sonraki Kilometre: \(user.nextkm)")
                                    .fontWeight(.regular)
                                    .font(.caption)

                            }
                        }
                        .swipeActions {
                            Button("Sil", role: .destructive) {
                                modelContext.delete(user)
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Kayıtlar")
        .toolbar {
            NavigationLink {
                CreateUser()
            } label: {
                Text("+")
                    .fontWeight(.bold)
                    .font(.title)
            }
        }
    }
}


#Preview {
    UserList()
}
