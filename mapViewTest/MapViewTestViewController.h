//
//  MapViewTestViewController.h
//  mapViewTest
//
//  Created by Jonathan King on 08/08/2012.
//  Copyright (c) 2012 Jonathan King. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewTestViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
