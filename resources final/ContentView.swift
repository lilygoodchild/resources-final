//
//  ContentView.swift
//  resources final
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI
struct LinkButton: View {
    var imageName: String
    var urlString: String
    
    func openLink() {
        guard let url = URL(string: urlString) else { return }
        UIApplication.shared.open(url)
    }
    
    var body: some View {
        Button(action: openLink) {
            Image(imageName).resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit).clipShape(Rectangle()).frame(width: 50.0, height : 50.0)
        }
    }
}


struct ContentView: View {
    var body: some View {
        
        
        ZStack{
            VStack(spacing: -200.0) {
                Text("Resources")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                HStack {
                    Image("squirrel")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 60.0, height : 450.0)
                    Text("Sophie the Squirrel: Here are all of your favourite websites stored in one place!")
                }.padding(.bottom, 15.0)
                
                
 VStack(alignment: .center, spacing: 15.0){

                    VStack(alignment: .center, spacing: 6.0){
                        
                        Text("English")

                        HStack(spacing: 15.0){

                            LinkButton(imageName: "massoit", urlString: "https://www.google.com")


                            LinkButton(imageName: "sparknotes", urlString: "https://www.google.com")


                            LinkButton(imageName: "mrbruff", urlString: "https://www.google.com")


                            LinkButton(imageName: "saveexams", urlString: "https://www.google.com")


                            LinkButton(imageName: "link", urlString: "https://www.google.com")

                        }.padding(.horizontal, 15.0)
                    }.padding(.top,10.0).padding(.bottom, 10.0).background(Color(red: 167/255, green: 212/255, blue: 155/255)).cornerRadius(15).shadow(radius: 3)

//
                    VStack(alignment: .center, spacing: 6.0){

                        Text("Maths")

                        HStack(spacing: 15.0){
                            LinkButton(imageName: "mathswatch", urlString: "https://vle.mathswatch.co.uk/vle/")


                            LinkButton(imageName: "mathgenie", urlString: "https://www.mathsgenie.co.uk/")

                            LinkButton(imageName: "TLMaths", urlString:
                                        "https://www.youtube.com/c/TLMaths")


                            LinkButton(imageName: "mathstutor", urlString: "https://www.youtube.com/@TheGCSEMathsTutor")


                            LinkButton(imageName: "pmt", urlString: "https://www.physicsandmathstutor.com/maths-revision/")

                        }.padding(.horizontal, 15.0)
                    }.padding(.top,10.0).padding(.bottom, 10.0).background(Color(red: 167/255, green: 212/255, blue: 155/255)).cornerRadius(15).shadow(radius: 3)

                    
                    
                    VStack(alignment: .center, spacing: 6.0){

                        Text("Geography")

                        HStack(spacing: 15.0){
                            LinkButton(imageName: "pmt", urlString: " https://www.physicsandmathstutor.com/geography-revision/")

                            LinkButton(imageName: "link", urlString: "https://www.bbc.co.uk/bitesize/subjects/z2f3cdm")

                            LinkButton(imageName: "rgs", urlString: " https://www.rgs.org/")


                            LinkButton(imageName: "seneca", urlString: "https://senecalearning.com/en-GB/")


                            LinkButton(imageName: "tutor2u", urlString: " https://www.tutor2u.net/geography")

                        }.padding(.horizontal, 15.0)
                    }.padding(.top,10.0).padding(.bottom, 10.0).background(Color(red: 167/255, green: 212/255, blue: 155/255)).cornerRadius(15).shadow(radius: 3)
                    
                    
                    VStack(alignment: .center, spacing: 6.0){

                        Text("Science")

                        HStack(spacing: 15.0){
                            LinkButton(imageName: "activelearn", urlString: "https://www.pearsonactivelearn.com")

                            LinkButton(imageName: "crashcourse", urlString: "https://www.youtube.com/channel/UCX6b17PVsYBQ0ip5gyeme-Q")

                            LinkButton(imageName: "uplearn", urlString: "https://uplearn.co.uk/")


                            LinkButton(imageName: "pmt", urlString: "https://www.physicsandmathstutor.com")


                            LinkButton(imageName: "freesciencelessons", urlString: "https://www.freesciencelessons.co.uk")

                        }.padding(.horizontal, 15.0)
                    }.padding(.top,10.0).padding(.bottom, 10.0).background(Color(red: 167/255, green: 212/255, blue: 155/255)).cornerRadius(15).shadow(radius: 3)
                    
                    VStack(alignment: .center, spacing: 6.0){

                        Text("French")

                        HStack(spacing: 15.0){
                            LinkButton(imageName: "linguascope", urlString: "https://www.linguascope.com/")

                            LinkButton(imageName: "seneca", urlString: "https://senecalearning.com/en-GB/")

                            LinkButton(imageName: "quizlet", urlString: "https://quizlet.com/en-gb")

                            LinkButton(imageName: "saveexams", urlString: "https://www.savemyexams.com/gcse/geography/")

                            LinkButton(imageName: "babbel", urlString: "https://uk.babbel.com/pages/en-gb/evergreen-multilanguage?bsc=gg_nb_srh_eng_all&btp=default&gclid=Cj0KCQjwoK2mBhDzARIsADGbjer8cTzAAxov9I2B7L3a_7kWhv0XskzfV-gCHiT1BaVz-uPTkZVFzd8aAiQKEALw_wcB&utm_content=17293993097_136539680813_kwd-28954316_632781806553&utm_medium=cpc&utm_source=google")

                        }.padding(.horizontal, 15.0)
                    }.padding(.top,10.0).padding(.bottom, 10.0).background(Color(red: 167/255, green: 212/255, blue: 155/255)).cornerRadius(15).shadow(radius: 3)
                    
                }
                .padding(.all, 1.0)
                
                
            }
            .padding(.bottom, 2.0)
            
            
            
        }
    }
}
    

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
