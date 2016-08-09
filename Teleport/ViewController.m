//
//  ViewController.m
//  Teleport
//
//  Created by Karumba Samuel on 09/08/2016.
//  Copyright © 2016 IBM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    
    //instructs the map view to zoom into a region that is 800 by 800 meters around the user’s location.
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
}
@end
