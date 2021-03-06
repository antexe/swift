//
// OniAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class OniAPI: APIBase {
    /**
     鬼情報
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTarget(completion: @escaping ((_ data: InlineResponse200?,_ error: Error?) -> Void)) {
        getTargetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     鬼情報
     - GET /oni
     - examples: [{contentType=application/json, example={
  "lon" : "aeiou",
  "id" : "aeiou",
  "lat" : "aeiou"
}}]

     - returns: RequestBuilder<InlineResponse200> 
     */
    open class func getTargetWithRequestBuilder() -> RequestBuilder<InlineResponse200> {
        let path = "/oni"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<InlineResponse200>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     鬼情報更新
     
     - parameter id: (query)  (optional)
     - parameter lat: (query)  (optional)
     - parameter lot: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func put(id: String? = nil, lat: String? = nil, lot: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        putWithRequestBuilder(id: id, lat: lat, lot: lot).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     鬼情報更新
     - PUT /oni
     
     - parameter id: (query)  (optional)
     - parameter lat: (query)  (optional)
     - parameter lot: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func putWithRequestBuilder(id: String? = nil, lat: String? = nil, lot: String? = nil) -> RequestBuilder<Void> {
        let path = "/oni"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "id": id, 
            "lat": lat, 
            "lot": lot
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
