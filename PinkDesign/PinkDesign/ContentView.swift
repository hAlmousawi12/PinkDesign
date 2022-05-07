//
//  ContentView.swift
//  PinkDesign
//
//  Created by Hussain Almousawi on 5/7/22.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var pass = ""
    var body: some View {
        ZStack {
            Color.bg.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Log in")
                    .foregroundColor(.onbg)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.vertical)
                VStack(alignment: .leading) {
                    Text("Log in with one of the following options.")
                        .foregroundColor(.second)
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 150, height: 60)
                                .foregroundColor(.container)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(lineWidth: 3)
                                        .foregroundColor(.prime)
                                )
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        }
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 150, height: 60)
                                .foregroundColor(.container)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(lineWidth: 3)
                                        .foregroundColor(.prime)
                                )
                            Image("phone")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        }
                    }
                }
                .padding(.vertical)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Email")
                        .foregroundColor(.onbg)
                        .padding(.leading, 10)
                    MyTextField(name: "Enter your email", text: $name)
                }
                .padding(.vertical)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Password")
                        .foregroundColor(.onbg)
                        .padding(.leading, 10)
                    SecureField("Enter your password", text: $pass)
                        .padding()
                        .frame(height: 60)
                        .background(Color.container)
                        .cornerRadius(15)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(lineWidth: 3)
                                .foregroundColor(.prime)
                        )
                        .foregroundColor(.prime)
                }
                .padding(.vertical)
                
                Text("Log in")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(
                        LinearGradient(colors: [.prime, .prpl], startPoint: .trailing, endPoint: .leading)
                    )
                    .cornerRadius(15)
                    .padding(.top)
                
                HStack(spacing: 0) {
                    Text("Don't have an account? ")
                        .foregroundColor(.second)
                    Text("Sign up")
                        .foregroundColor(.onbg)
                }
                Spacer()
            }.padding(20)
        }
    }
}

struct SignUp: View {
    @State var name = ""
    @State var email = ""
    @State var pass = ""
    var body: some View {
        ZStack {
            Color.bg.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Sign up")
                    .foregroundColor(.onbg)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.vertical)
                VStack(alignment: .leading) {
                    Text("Sign up with one of the following options.")
                        .foregroundColor(.second)
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 150, height: 60)
                                .foregroundColor(.container)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(lineWidth: 3)
                                        .foregroundColor(.prime)
                                )
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        }
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 150, height: 60)
                                .foregroundColor(.container)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(lineWidth: 3)
                                        .foregroundColor(.prime)
                                )
                            Image("phone")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        }
                    }
                }
                .padding(.vertical)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Name")
                        .foregroundColor(.onbg)
                        .padding(.leading, 10)
                    MyTextField(name: "Enter your name", text: $name)
                }
                .padding(.vertical)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Email")
                        .foregroundColor(.onbg)
                        .padding(.leading, 10)
                    MyTextField(name: "Enter your email", text: $email)
                }
                .padding(.vertical)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Password")
                        .foregroundColor(.onbg)
                        .padding(.leading, 10)
                    SecureField("Enter your password", text: $pass)
                        .padding()
                        .frame(height: 60)
                        .background(Color.container)
                        .cornerRadius(15)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(lineWidth: 3)
                                .foregroundColor(.prime)
                        )
                        .foregroundColor(.prime)
                }
                .padding(.vertical)
                
                Text("Sign up")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(
                        LinearGradient(colors: [.prime, .prpl], startPoint: .trailing, endPoint: .leading)
                    )
                    .cornerRadius(15)
                    .padding(.top)
                
                HStack(spacing: 0) {
                    Text("Already have an account? ")
                        .foregroundColor(.second)
                    Text("Log in")
                        .foregroundColor(.onbg)
                }
                Spacer()
            }.padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
        }
    }
}

struct MyTextField: View {
    var name: String
    @Binding var text: String
    var body: some View {
        TextField(name, text: $text)
            .padding()
            .frame(height: 60)
            .background(Color.container)
            .cornerRadius(15)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 3)
                    .foregroundColor(.prime)
            )
            .foregroundColor(.prime)
    }
}
