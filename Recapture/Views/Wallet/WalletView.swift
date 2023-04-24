//
//  WalletView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 21/04/2023.
//

import SwiftUI

struct WalletView: View {
    
    
    var body: some View {
        
        
        VStack(spacing: 42.0) {
    
            //Wallet
            VStack(spacing: 16.0) {
                HStack {
                    VStack(alignment: .leading, spacing: 12.0) {
                        VStack(alignment: .leading, spacing: 3.0) {
                            Text("WALLET BALANCE")
                                .font(.caption)
                                .foregroundColor(Color.gray)
                                .tracking(-0.4)
                            Text("N200,000")
                                .font(.title)
                                .fontWeight(.bold)
                                .tracking(-0.4)
                        }
                        VStack(alignment: .leading, spacing: 4.0) {
                            Text("Payment powered by Paystack")
                                .font(.footnote)
                                .foregroundColor(Color.gray)
                            Button {
                                //Do something here
                            } label: {
                                Text("Learn More")
                                    .font(.footnote)
                            }
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    Spacer()
                    Image("PaystackLogo")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.trailing)
                        .opacity(0.7)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 140.0)
                .background(Color(.systemGray5))
                .cornerRadius(10.0)
                .padding([.top, .leading, .trailing])
                
                
                
                
                //Actions
                HStack {
                    Button(action: {
                        
                    }, label: {
                        NavigationLink(destination: OnboardingView()) {
                            HStack {
                                Text("Fund Wallet")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 50.0)
                                    .background(Color(red: 0.047, green: 0.641, blue: 0.859))
                                    .cornerRadius(10)
                            }
                        }
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        NavigationLink(destination: OnboardingView()) {
                            HStack {
                                Text("Manage Wallet")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 50.0)
                                    .background(Color(hue: 0.485, saturation: 0.949, brightness: 0.726))
                                    .cornerRadius(10)
                            }
                        }
                    })

                    
                }
                .padding(.horizontal)
            }


            
            //feltgood
            VStack(spacing: 16.0) {
                HStack {
                    VStack(alignment: .leading, spacing: 2.0) {
                        Text("Transaction History")
                            .font(.body)
                            .fontWeight(.medium)
                        Text("Showing recent history")
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    
                    Spacer()
                    
                        Button {
                            //Do something here
                        } label: {
                            HStack {
                                Text("Sort")
                                    .font(.callout)
                                    .fontWeight(.regular)
                                Image(systemName: "chevron.down")
                                    .font(.system(size: 11))
                            }
                            .frame(width: 80.0)
                            .frame(height: 36.0)
                            .background(Color(.systemGray5))
                            .cornerRadius(10)
                        }
                }
                .padding(.horizontal)
                
                WalletHistory()
            }
            
            
        }
        .navigationTitle("Wallet")
        .navigationBarTitleDisplayMode(.large)

        
        
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}














struct WalletItem: Identifiable {
    let id = UUID()
    let title = "Process Reality"
    var status: String
    var date: Date
    var currency: String
    var amount: Int
}






struct WalletHistory: View {
    @State var walletItems = [
        WalletItem(status: "Successfull", date: Date(), currency: "N", amount: 30000),
        WalletItem(status: "Successfull", date: Date(), currency: "N", amount: 30000),
        WalletItem(status: "Successfull", date: Date(), currency: "N", amount: 30000),
        WalletItem(status: "Successfull", date: Date(), currency: "N", amount: 30000),
        WalletItem(status: "Successfull", date: Date(), currency: "N", amount: 30000),
        WalletItem(status: "Successfull", date: Date(), currency: "N", amount: 30000),
        WalletItem(status: "Successfull", date: Date(), currency: "N", amount: 30000)
    ]
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd yyyy"
        return formatter
    }()
    
    var body: some View {
        
        
        List(walletItems) { item in
            HStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(.systemGray5))
                        .frame(width: 40.0, height: 40.0)
                        .mask(Circle())
                    Image(systemName: "checkmark")
                }
                
                VStack(alignment:.leading){
                    Text(item.title)
                        .font(.body)
                        .fontWeight(.medium)
                    HStack(spacing: 4.0) {
                        Text(item.status)
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                        Text ("•")
                            .foregroundColor(Color.gray)
                        Text("\(dateFormatter.string(from: item.date))")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                    }
                }
                Spacer()
                Text("\(item.currency)\(item.amount)")
            }
        }
        .listStyle(.plain)
        
    }
}
