//GET DATA

Alamofire.request("https://pacific-inlet-58514.herokuapp.com/contacts", method: .get, parameters: ["":""], encoding: URLEncoding.default, headers: nil).responseJSON { (response:DataResponse<Any>) in

          switch(response.result) {
          case .success(_):
              if let data = response.result.value{
                  print(response.result.value)
              }
              break

          case .failure(_):
              print(response.result.error)
              break

          }
      }

    //POST DATA
      let data = [ "ashish":"Ashish" ];      
      Alamofire.request("http://localhost:8000/data", method: .post, parameters: data, encoding: JSONEncoding.default)
          .responseJSON { response in
              print("Success")
      }
