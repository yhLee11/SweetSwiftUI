//
//  ContentView.swift
//  Swift_test1
//
//  Created by 이연희 on 12/31/20.
//  Copyright © 2020 이연희. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
    
                HStack{
                    Image("apple")
                        .resizable()
                        .scaledToFill()
                        .frame(width:140)
                        .clipped()
                    
                    VStack(alignment:.leading){
                        Text("appele")
                            .font(.headline)
                            .fontWeight(.medium)
                            .padding(.bottom,6)
                        
                        Text("JMT")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        HStack(spacing:0){
                            Text("가격 ").font(.footnote)
                                + Text("2100").font(.headline)
                            Spacer()
                            
                            Image(systemName: "heart")
                                .imageScale(.large)
                                .foregroundColor(Color("peach"))
                                .frame(width:32,height: 32)
                            
                            Image(systemName: "car")
                                .foregroundColor(Color("peach"))
                                .frame(width:32,height: 32)
                        }
                    }
                    .padding([.leading,.bottom],12)
                    .padding([.top,.trailing])
                    
                }.frame(height:150)
                    .background(Color.primary.colorInvert())
                .cornerRadius(6)
                    .shadow(color: Color.primary.opacity(0.33), radius: 1, x: 2, y: 2)
                    .padding(.vertical,8)
            }
        }
   
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
