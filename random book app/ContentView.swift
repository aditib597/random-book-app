//
//  ContentView.swift
//  random book app
//
//  Created by P Kris on 6/17/20.
//  Copyright © 2020 Aditi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var imageName = 1
    @State var image = "Harry Potter"
    @State var imagesArray =  ["Harry Potter", "Pollyanna", "The Crown", "To Kill a Mockingbird", "The Tree of Dreams", "Warriors"]
    @State var bookTitle = " harrypotter"
    @State var bookTitleArray = ["Harry Potter", "Pollyana", "The Crown", "To Kill a Mockingbird", "The Tree of Dreams", "Warriors"]
    
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to the  Book App!").font(Font.custom("Cochin-BoldItalic", size: 25)).foregroundColor(Color.pink)
            
            Text("Click the button to change the book.").font(Font.custom("Cochin-BoldItalic", size: 25)).foregroundColor(Color.green)
            Spacer()
            Text(bookTitle).font(Font.custom("Cochin-BoldItalic", size: 28)).foregroundColor(Color.purple)
                
            Image(image ).resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 21.0)
            Button(action: {
                print("Button pressed")
                self.randomImage()
                self.updateImage()
            }) {
                Text("Click to change the book").font(Font.custom("Cochin-BoldItalic", size: 28)).foregroundColor(Color.pink)
            }
            Spacer()
        }
        .padding()
       
    }
    func randomImage() {
        imageName = Int.random(in: 1...6)
        print(imageName)
        
    }

    func updateImage() {
        image = imagesArray[imageName - 1]
        bookTitle = bookTitleArray[imageName - 1]
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

