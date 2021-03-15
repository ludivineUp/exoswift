//
//  main.swift
//  testAPI
//
//  Created by ludivine on 10/12/2020.
//

import Foundation

struct Post : Decodable{
    var id : Int = 0;
    var userId : Int = 0;
    var title : String;
    var body : String;
    
    init(id: Int, userId:Int, title:String, body:String){
        self.id = id
        self.userId = userId
        self.title = title
        self.body = body
    }
}
func fetchPost(){
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!
        debugPrint( "https://jsonplaceholder.typicode.com/posts/1")
       URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
        print("running")
          if let error = error {
            debugPrint("Error with fetching post: \(error)")
            return
          }else{
            debugPrint("No error")
          }
          guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode)
          else {
            debugPrint("Error with the response, unexpected status code: \(response)")
            return
          }
          if let data = data{
                debugPrint("data")
                print(String(bytes: data, encoding: .utf8) )
                let post: Post = try! JSONDecoder().decode(Post.self, from: data)
                print(post)

          }else{
            print("no data")
            return
          }

        }).resume()
      }

// main
fetchPost()
dispatchMain()
print("end")
