//
//  MapViewTestViewController.m
//  mapViewTest
//
//  Created by Jonathan King on 08/08/2012.
//  Copyright (c) 2012 Jonathan King. All rights reserved.
//

#import "MapViewTestViewController.h"

@interface MapViewTestViewController ()
@property (nonatomic) BOOL isDownloadingData;
@end

@implementation MapViewTestViewController
@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated {
    [self logIfCached];
}

- (void)mapViewWillStartLoadingMap:(MKMapView *)mapView {
    _isDownloadingData = TRUE;
}
- (void)mapViewDidFinishLoadingMap:(MKMapView *)mapView {
    _isDownloadingData = FALSE;
}
- (void)mapViewDidFailLoadingMap:(MKMapView *)mapView withError:(NSError *)error {
    _isDownloadingData = FALSE;
}

- (void)logIfCached {
    
    if (_isDownloadingData) NSLog(@"Downloading");
    else NSLog(@"Is Cached");
}

- (void)viewDidUnload
{
    [self setMapView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
