//
//  ContentView.swift
//  BakimKarti
//
//  Created by Ali Osman GÖK on 2.11.2023.
//

import SwiftUI

struct RenderView: View {
    @State var user: User
    var body: some View {
        ZStack{
            Color.white
            VStack{
                VStack(alignment: .center){
                    Text(" \(user.sirket) ")
                        .font(
                        .custom(
                        "AmericanTypewriter",
                        fixedSize: 24)
                        .weight(.semibold)

                    )
                    Text(" Araç Bakım Kartı ")
                        .font(
                            .custom(
                            "AmericanTypewriter",
                            fixedSize: 24)
                            .weight(.semibold)

                        )
                }

                VStack(alignment: .leading){
                    
                    Text("  Tarih: \(user.tarih   )").padding(1).font(.system(size: 15))
                    
                    if user.plaka != ""{
                        
                        Text("  Plaka: \(user.plaka  ) ").padding(1).font(.system(size: 15))
                    }
                    if user.km != ""{
                        
                        Text("  Kilometre: \(user.km   ) ").padding(1).font(.system(size: 15))
                    }
                    if user.nextkm != ""{
                        HStack{
                            Text("  Sonraki Değişim Kilometresi:").padding(1).font(.system(size: 15))
                            Text("\(user.nextkm   )  ").padding(1).font(.system(size: 15)).foregroundStyle(Color.red)
                        }
                    }
                    if user.oil != ""{
                        
                        Text("  Motor Yağı: \(user.oil  ) ").padding(1).font(.system(size: 15))
                    }
                    
                    if user.havaf == true{
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Hava Filtresi Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    if user.yagf == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Yağ Filtresi Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    if user.yakitf == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Yakıt Filtresi Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    
                    if user.polenf == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Polen Filtresi Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    if user.antifiriz == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Antifiriz Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    if user.sanziman == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Şanzıman Yağı Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    if user.direksiyon == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Direksiyon Yağı Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    if user.arkafren == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Arka Fren Balatası Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    if user.onfren == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Ön Fren Balatası Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    if user.debriyaj == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Debriyaj Seti Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }

                    if user.triger == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Triger Seti Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    if user.buji == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Buji Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    if user.vkayis == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" V Kayışı Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    if user.diferansiyel == true{
                        
                        HStack{
                            Text(" ")
                            Image(systemName:"checkmark.square").padding(1).font(.system(size: 15)).foregroundStyle(Color.green)
                            Text(" Diferansiyel Yağı Değişti  ").padding(1).font(.system(size: 15))
                            
                        }
                    }
                    
                    if user.notes != ""{
                        
                        Text("Not: \(user.notes) ").padding(5).font(.system(size: 15))
                    }
                }
                VStack(alignment: .center){
                    Text(" İyi yolculuklar dileriz... ")
                        .font(
                            .custom(
                            "AmericanTypewriter",
                            fixedSize: 18)
                            .weight(.semibold)

                        )
                }
                VStack(alignment: .center){
                    HStack{
                        Image("trcv")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.20,height: UIScreen.main.bounds.height * 0.04)
                            .opacity(0.5)

                        
                    }
                }.padding(3)
            }
                .overlay(Rectangle()
                    .stroke(Color.black, lineWidth: 7))
                .padding(5)
        }
    }
}

