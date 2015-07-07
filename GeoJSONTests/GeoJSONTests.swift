//
//  GeoJSONTests.swift
//  GeoJSONTests
//
//  Created by Wayne Ohmer on 6/23/15.
//  Copyright (c) 2015 Wayne Ohmer. All rights reserved.
//

import UIKit
import XCTest
import CoreLocation

class GeoJSONTests: XCTestCase {

    var testGeoJSON:GeoJSON?

    override func setUp() {
        super.setUp()
        //get a file called testData.geojson 
        let thisBundle = NSBundle(forClass: self.classForCoder)
        XCTAssertNotNil(thisBundle, "Bundle Nil")
        let path:String? = thisBundle.pathForResource("testData", ofType: "geojson")
        XCTAssertNotNil(path, "Path Nil")
        self.testGeoJSON = GeoJSON(path: path!)

        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
//some trivial tests of basic functionality.  
    func testPoints() {
        for point in self.testGeoJSON!.points{
            XCTAssertTrue(point.geometry.point.coordinate.longitude == 102.0, "Point Longitude Off")
            XCTAssertTrue(point.geometry.point.coordinate.latitude == 0.5, "Point Latitude Off")
        }
    }
    func testPolygons(){
        for polygon in self.testGeoJSON!.polygons{
            XCTAssertTrue(polygon.geometry.polygon[0][0].coordinate.longitude == 100, "Polygon Longitude Off")
            XCTAssertTrue(polygon.geometry.polygon[0][0].coordinate.latitude == 0.0, "Polygon Latitude Off")
        }
    }
    
    func testProperties(){
        XCTAssertTrue(self.testGeoJSON!.featureCollection[0].properties["prop0"] as! String == "value0", "Property wrong")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        let testPoint = CLLocation(latitude: 0.5, longitude: 100.5)
        self.measureBlock() {
            XCTAssertTrue(self.testGeoJSON!.polygons[0].geometry.surroundsPoint(testPoint),"Point not inside")
        }
    }
    
}
