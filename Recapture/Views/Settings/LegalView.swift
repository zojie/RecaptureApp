//
//  PrivacyView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 29/10/2022.
//

import SwiftUI

struct LegalView: View {
    @State private var segmentedLegal = 0
    
    
    var body: some View {
        
        VStack {
            
            Picker("", selection: $segmentedLegal) {
                Text("Privacy Policy").tag(0)
                Text("Terms Of Use").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            
            
            
            
            ScrollView {
                if (segmentedLegal == 0) {
                    PrivacyPolicy()
                }
                if (segmentedLegal == 1) {
                    TermsOfUse()
                }
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Legal")
        .navigationBarTitleDisplayMode(.inline)

        
        
    }
}

struct LegalView_Previews: PreviewProvider {
    static var previews: some View {
        LegalView()
    }
}



















struct PrivacyPolicy: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            Text("Paragraph 1")
                .font(.title)
                .fontWeight(.semibold)
            Text("Lorem ipsum dolor sit amet, sea ea noster omittam, his at graece minimum. Ne porro affert nam, ad animal pertinax percipitur eam. Duo ei vidit etiam, eu pri munere impetus praesent. Ut vim maiorum expetenda, in eos oportere prodesset, impedit scribentur mel ad. Vocibus nostrum blandit mea ne.In sit stet quot audire, ne est graeco vituperatoribus. Id fuisset intellegam eum, pro ut dicat invenire iudicabit. Rebum posse harum sea cu. Quis honestatis ad has, utinam inciderint ad sit, sit simul discere consulatu ea. Tamquam eruditi tractatos vel in. Ex falli aperiam deseruisse ius, eum melius iisque detraxit et, eros vivendo eu nam. His te doctus officiis dissentiet, pericula ocurreret te sit. Ea vix quas rebum maiorum. Sed fugit veritus ex, nam no esse epicuri, facer quaerendum duo in. Denique voluptatibus no pri, tamquam consectetuer eos no.")
                .font(.callout)
            Text("Example of sub header")
                .font(.callout)
                .fontWeight(.semibold)
            VStack(alignment: .leading, spacing: 8.0) {
                Text("Lorem ipsum dolor sit amet, sea ea noster omittam, his at graece minimum. Sed fugit veritus ex, nam no esse epicuri, facer quaerendum duo in. Denique voluptatibus no pri, tamquam consectetuer eos no.")
                    .font(.callout)
                Text("- Lorem ipsum dolor sit amet, sea ea noster omittam, his at graece minimum.")
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            Text("Example of sub header")
                .fontWeight(.semibold)
                .font(.callout)
            Text("Lorem ipsum dolor sit amet, sea ea noster omittam, his at graece minimum. Ne porro affert nam, ad animal pertinax percipitur eam. Duo ei vidit etiam, eu pri munere impetus praesent. Ut vim maiorum expetenda, in eos oportere prodesset, impedit scribentur mel ad. Vocibus nostrum blandit mea ne.In sit stet quot audire, ne est graeco vituperatoribus. Id fuisset intellegam eum, pro ut dicat invenire iudicabit. Rebum posse harum sea cu. Quis honestatis ad has, utinam inciderint ad sit, sit simul discere consulatu ea. Tamquam eruditi tractatos vel in. Ex falli aperiam deseruisse ius, eum melius iisque detraxit et, eros vivendo eu nam. His te doctus officiis dissentiet, pericula ocurreret te sit. Ea vix quas rebum maiorum. Sed fugit veritus ex, nam no esse epicuri, facer quaerendum duo in. Denique voluptatibus no pri, tamquam consectetuer eos no.")
                .font(.callout)
            
        }
    }
}








struct TermsOfUse: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            Text("Terms Of Usage")
                .font(.title)
                .fontWeight(.semibold)
            Text("Lorem ipsum dolor sit amet, sea ea noster omittam, his at graece minimum. Ne porro affert nam, ad animal pertinax percipitur eam. Duo ei vidit etiam, eu pri munere impetus praesent. Ut vim maiorum expetenda, in eos oportere prodesset, impedit scribentur mel ad. Vocibus nostrum blandit mea ne.In sit stet quot audire, ne est graeco vituperatoribus. Id fuisset intellegam eum, pro ut dicat invenire iudicabit. Rebum posse harum sea cu. Quis honestatis ad has, utinam inciderint ad sit, sit simul discere consulatu ea. Tamquam eruditi tractatos vel in. Ex falli aperiam deseruisse ius, eum melius iisque detraxit et, eros vivendo eu nam. His te doctus officiis dissentiet, pericula ocurreret te sit. Ea vix quas rebum maiorum. Sed fugit veritus ex, nam no esse epicuri, facer quaerendum duo in. Denique voluptatibus no pri, tamquam consectetuer eos no.")
                .font(.callout)
            Text("Example of sub header")
                .font(.callout)
                .fontWeight(.semibold)
            VStack(alignment: .leading, spacing: 8.0) {
                Text("Lorem ipsum dolor sit amet, sea ea noster omittam, his at graece minimum. Sed fugit veritus ex, nam no esse epicuri, facer quaerendum duo in. Denique voluptatibus no pri, tamquam consectetuer eos no.")
                    .font(.callout)
                Text("- Lorem ipsum dolor sit amet, sea ea noster omittam, his at graece minimum.")
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            Text("Example of sub header")
                .fontWeight(.semibold)
                .font(.callout)
            Text("Lorem ipsum dolor sit amet, sea ea noster omittam, his at graece minimum. Ne porro affert nam, ad animal pertinax percipitur eam. Duo ei vidit etiam, eu pri munere impetus praesent. Ut vim maiorum expetenda, in eos oportere prodesset, impedit scribentur mel ad. Vocibus nostrum blandit mea ne.In sit stet quot audire, ne est graeco vituperatoribus. Id fuisset intellegam eum, pro ut dicat invenire iudicabit. Rebum posse harum sea cu. Quis honestatis ad has, utinam inciderint ad sit, sit simul discere consulatu ea. Tamquam eruditi tractatos vel in. Ex falli aperiam deseruisse ius, eum melius iisque detraxit et, eros vivendo eu nam. His te doctus officiis dissentiet, pericula ocurreret te sit. Ea vix quas rebum maiorum. Sed fugit veritus ex, nam no esse epicuri, facer quaerendum duo in. Denique voluptatibus no pri, tamquam consectetuer eos no.")
                .font(.callout)
            
        }
    }
}
