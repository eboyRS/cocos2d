//
// Transitions Demo
// a cocos2d example
// http://www.cocos2d-iphone.org
//

// local import
#import "cocos2d.h"
#import "TransitionsTest.h"

#define TRANSITION_DURATION (1.2f)

@interface FadeWhiteTransition : CCFadeTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface FlipXLeftOver : CCFlipXTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface FlipXRightOver : CCFlipXTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface FlipYUpOver : CCFlipYTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface FlipYDownOver : CCFlipYTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface FlipAngularLeftOver : CCFlipAngularTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface FlipAngularRightOver : CCFlipAngularTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface ZoomFlipXLeftOver : CCZoomFlipXTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface ZoomFlipXRightOver : CCZoomFlipXTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface ZoomFlipYUpOver : CCZoomFlipYTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface ZoomFlipYDownOver : CCZoomFlipYTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface ZoomFlipAngularLeftOver : CCZoomFlipAngularTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface ZoomFlipAngularRightOver : CCZoomFlipAngularTransition 
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface PageTransitionForward : CCPageTurnTransition
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end
@interface PageTransitionBackward : CCPageTurnTransition
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s;
@end


@implementation FlipXLeftOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationLeftOver];
}
@end
@implementation FadeWhiteTransition
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s withColor:ccWHITE];
}
@end

@implementation FlipXRightOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationRightOver];
}
@end
@implementation FlipYUpOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationUpOver];
}
@end
@implementation FlipYDownOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationDownOver];
}
@end
@implementation FlipAngularLeftOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationLeftOver];
}
@end
@implementation FlipAngularRightOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationRightOver];
}
@end
@implementation ZoomFlipXLeftOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationLeftOver];
}
@end
@implementation ZoomFlipXRightOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationRightOver];
}
@end
@implementation ZoomFlipYUpOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationUpOver];
}
@end
@implementation ZoomFlipYDownOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationDownOver];
}
@end
@implementation ZoomFlipAngularLeftOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationLeftOver];
}
@end
@implementation ZoomFlipAngularRightOver
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s orientation:kOrientationRightOver];
}
@end

@implementation PageTransitionForward
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s backwards:NO];
}
@end

@implementation PageTransitionBackward
+(id) transitionWithDuration:(ccTime) t scene:(CCScene*)s {
	return [self transitionWithDuration:t scene:s backwards:YES];
}
@end




static int sceneIdx=0;
static NSString *transitions[] = {
						@"CCJumpZoomTransition",
						@"CCCrossFadeTransition",
						@"CCRadialCCWTransition",
						@"CCRadialCWTransition",
						@"PageTransitionForward",
						@"PageTransitionBackward",
						@"CCFadeTRTransition",
						@"CCFadeBLTransition",
						@"CCFadeUpTransition",
						@"CCFadeDownTransition",
						@"CCTurnOffTilesTransition",
						@"CCSplitRowsTransition",
						@"CCSplitColsTransition",
						@"CCFadeTransition",
						@"FadeWhiteTransition",
						@"FlipXLeftOver",
						@"FlipXRightOver",
						@"FlipYUpOver",
						@"FlipYDownOver",
						@"FlipAngularLeftOver",
						@"FlipAngularRightOver",
						@"ZoomFlipXLeftOver",
						@"ZoomFlipXRightOver",
						@"ZoomFlipYUpOver",
						@"ZoomFlipYDownOver",
						@"ZoomFlipAngularLeftOver",
						@"ZoomFlipAngularRightOver",
						@"CCShrinkGrowTransition",
						@"CCRotoZoomTransition",
						@"CCMoveInLTransition",
						@"CCMoveInRTransition",
						@"CCMoveInTTransition",
						@"CCMoveInBTransition",
						@"CCSlideInLTransition",
						@"CCSlideInRTransition",
						@"CCSlideInTTransition",
						@"CCSlideInBTransition",
};

Class nextTransition()
{	
	// HACK: else NSClassFromString will fail
	[CCRadialCCWTransition node];
	
	sceneIdx++;
	sceneIdx = sceneIdx % ( sizeof(transitions) / sizeof(transitions[0]) );
	NSString *r = transitions[sceneIdx];
	Class c = NSClassFromString(r);
	return c;
}

Class backTransition()
{
	// HACK: else NSClassFromString will fail
	[CCFadeTransition node];

	sceneIdx--;
	int total = ( sizeof(transitions) / sizeof(transitions[0]) );
	if( sceneIdx < 0 )
		sceneIdx += total;
	NSString *r = transitions[sceneIdx];
	Class c = NSClassFromString(r);
	return c;
}

Class restartTransition()
{
	// HACK: else NSClassFromString will fail
	[CCFadeTransition node];

	NSString *r = transitions[sceneIdx];
	Class c = NSClassFromString(r);
	return c;
}

@implementation TextLayer
-(id) init
{
	if( (self=[super init]) ) {

		float x,y;
		
		CGSize size = [[CCDirector sharedDirector] winSize];
		x = size.width;
		y = size.height;

		CCSprite *bg1;
		if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
			bg1 = [CCSprite spriteWithFile:@"background1-ipad.jpg"];
		} else {
			bg1 = [CCSprite spriteWithFile:@"background1.jpg"];
		}
		
		bg1.position = ccp(size.width/2, size.height/2);
		[self addChild:bg1 z:-1];

		CCLabel* title = [CCLabel labelWithString:transitions[sceneIdx] fontName:@"Thonburi" fontSize:40];
		[self addChild:title];
		[title setColor:ccc3(255,32,32)];
		[title setPosition: ccp(x/2, y-100)];

		CCLabel* label = [CCLabel labelWithString:@"SCENE 1" fontName:@"Marker Felt" fontSize:64];
		[label setColor:ccc3(16,16,255)];
		[label setPosition: ccp(x/2,y/2)];	
		[self addChild: label];
		
		// menu
		CCMenuItemImage *item1 = [CCMenuItemImage itemFromNormalImage:@"b1.png" selectedImage:@"b2.png" target:self selector:@selector(backCallback:)];
		CCMenuItemImage *item2 = [CCMenuItemImage itemFromNormalImage:@"r1.png" selectedImage:@"r2.png" target:self selector:@selector(restartCallback:)];
		CCMenuItemImage *item3 = [CCMenuItemImage itemFromNormalImage:@"f1.png" selectedImage:@"f2.png" target:self selector:@selector(nextCallback:)];
		CCMenu *menu = [CCMenu menuWithItems:item1, item2, item3, nil];
		menu.position = CGPointZero;
		item1.position = ccp( size.width/2 - 100,30);
		item2.position = ccp( size.width/2, 30);
		item3.position = ccp( size.width/2 + 100,30);
		[self addChild: menu z:1];
		
		[self schedule:@selector(step:) interval:1.0f];
	}
	
	return self;
}

- (void) dealloc
{
	NSLog(@"------> Scene#1 dealloc!");
	[super dealloc];
}

-(void) step:(ccTime)dt
{
	NSLog(@"Scene1#step called");
}
-(void) nextCallback:(id) sender
{
	Class transition = nextTransition();
//	CCScene *s2 = [CCScene node];
//	[s2 addChild: [TextLayer2 node]];
	CCScene *s2 = [TextLayer2 node];
	[[CCDirector sharedDirector] replaceScene: [transition transitionWithDuration:TRANSITION_DURATION scene:s2]];

}	

-(void) backCallback:(id) sender
{
	Class transition = backTransition();
//	CCScene *s2 = [CCScene node];
//	[s2 addChild: [TextLayer2 node]];
	CCScene *s2 = [TextLayer2 node];
	[[CCDirector sharedDirector] replaceScene: [transition transitionWithDuration:TRANSITION_DURATION scene:s2]];
}	

-(void) restartCallback:(id) sender
{
	Class transition = restartTransition();
//	CCScene *s2 = [CCScene node];
//	[s2 addChild: [TextLayer2 node]];
	CCScene *s2 = [TextLayer2 node];
	[[CCDirector sharedDirector] replaceScene: [transition transitionWithDuration:TRANSITION_DURATION scene:s2]];
}	
-(void) onEnter
{
	[super onEnter];
	NSLog(@"Scene 1 onEnter");
}

-(void) onEnterTransitionDidFinish
{
	[super onEnterTransitionDidFinish];
	NSLog(@"Scene 1: transition did finish");
}

-(void) onExit
{
	[super onExit];
	NSLog(@"Scene 1 onExit");
}
@end

@implementation TextLayer2
-(id) init
{
	if( (self=[super init]) ) {
			
		float x,y;
		
		CGSize size = [[CCDirector sharedDirector] winSize];
		x = size.width;
		y = size.height;
		
		CCSprite *bg2;
		if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
			bg2 = [CCSprite spriteWithFile:@"background2-ipad.jpg"];
		} else {
			bg2 = [CCSprite spriteWithFile:@"background2.jpg"];
		}		
		bg2.position = ccp(size.width/2, size.height/2);
		[self addChild:bg2 z:-1];
		
		CCLabel* title = [CCLabel labelWithString:transitions[sceneIdx] fontName:@"Thonburi" fontSize:40];
		[self addChild:title];
		[title setColor:ccc3(255,32,32)];
		[title setPosition: ccp(x/2, y-100)];		
		
		CCLabel* label = [CCLabel labelWithString:@"SCENE 2" fontName:@"Marker Felt" fontSize:64];
		[label setColor:ccc3(16,16,255)];
		[label setPosition: ccp(x/2,y/2)];
		[self addChild: label];
		
		// menu
		CCMenuItemImage *item1 = [CCMenuItemImage itemFromNormalImage:@"b1.png" selectedImage:@"b2.png" target:self selector:@selector(backCallback:)];
		CCMenuItemImage *item2 = [CCMenuItemImage itemFromNormalImage:@"r1.png" selectedImage:@"r2.png" target:self selector:@selector(restartCallback:)];
		CCMenuItemImage *item3 = [CCMenuItemImage itemFromNormalImage:@"f1.png" selectedImage:@"f2.png" target:self selector:@selector(nextCallback:)];
		CCMenu *menu = [CCMenu menuWithItems:item1, item2, item3, nil];
		menu.position = CGPointZero;
		item1.position = ccp( size.width/2 - 100,30);
		item2.position = ccp( size.width/2, 30);
		item3.position = ccp( size.width/2 + 100,30);
		[self addChild: menu z:1];
		
		[self schedule:@selector(step:) interval:1.0f];
	}
	
	return self;
}

- (void) dealloc
{
	NSLog(@"------> Scene#2 dealloc!");
	[super dealloc];
}


-(void) nextCallback:(id) sender
{
	Class transition = nextTransition();
	CCScene *s2 = [CCScene node];
	[s2 addChild: [TextLayer node]];
	[[CCDirector sharedDirector] replaceScene: [transition transitionWithDuration:TRANSITION_DURATION scene:s2]];
}	

-(void) backCallback:(id) sender
{
	Class transition = backTransition();
	CCScene *s2 = [CCScene node];
	[s2 addChild: [TextLayer node]];
	[[CCDirector sharedDirector] replaceScene: [transition transitionWithDuration:TRANSITION_DURATION scene:s2]];
}	

-(void) restartCallback:(id) sender
{
	Class transition = restartTransition();
	CCScene *s2 = [CCScene node];
	[s2 addChild: [TextLayer node]];
	[[CCDirector sharedDirector] replaceScene: [transition transitionWithDuration:TRANSITION_DURATION scene:s2]];
}
-(void) step:(ccTime)dt
{
	NSLog(@"Scene2#step called");
}


/// callbacks 
-(void) onEnter
{
	[super onEnter];
	NSLog(@"Scene 2 onEnter");
}

-(void) onEnterTransitionDidFinish
{
	[super onEnterTransitionDidFinish];
	NSLog(@"Scene 2: transition did finish");
}

-(void) onExit
{
	[super onExit];
	NSLog(@"Scene 2 onExit");
}
@end

// CLASS IMPLEMENTATIONS
@implementation AppController

@synthesize window;

- (void) applicationDidFinishLaunching:(UIApplication*)application
{
	// Init the window
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	// must be called before any othe call to the director
	if( ! [CCDirector setDirectorType:kCCDirectorTypeDisplayLink] )
		[CCDirector setDirectorType:kCCDirectorTypeMainLoop];
	
	// get instance of the shared director
	CCDirector *director = [CCDirector sharedDirector];
	
	// before creating any layer, set the landscape mode
	[director setDeviceOrientation:kCCDeviceOrientationLandscapeLeft];
	
	// display FPS (useful when debugging)
	[director setDisplayFPS:YES];
	
	// frames per second
	[director setAnimationInterval:1.0/60];
	
	// create an OpenGL view
	// PageTurnTransition needs a depth buffer of 16 or 24 bits
	// These means that openGL z-order will be taken into account
	// On the other hand "Flip" transitions doesn't work with DepthBuffer > 0
	EAGLView *glView = [EAGLView viewWithFrame:[window bounds]
								   pixelFormat:kEAGLColorFormatRGBA8
								   depthFormat:0 //GL_DEPTH_COMPONENT24_OES
							preserveBackbuffer:NO];
	[glView setMultipleTouchEnabled:YES];
	
	// connect it to the director
	[director setOpenGLView:glView];
	
	// glview is a child of the main window
	[window addSubview:glView];
	
	// Make the window visible
	[window makeKeyAndVisible];
	
		
	// Default texture format for PNG/BMP/TIFF/JPEG/GIF images
	// It can be RGBA8888, RGBA4444, RGB5_A1, RGB565
	// You can change anytime.
	[CCTexture2D setDefaultAlphaPixelFormat:kCCTexture2DPixelFormat_RGBA8888];

	CCScene *scene = [CCScene node];
	[scene addChild: [TextLayer node]];
	
	[director runWithScene: scene];
}

// getting a call, pause the game
-(void) applicationWillResignActive:(UIApplication *)application
{
	[[CCDirector sharedDirector] pause];
}

// call got rejected
-(void) applicationDidBecomeActive:(UIApplication *)application
{
	[[CCDirector sharedDirector] resume];
}

-(void) applicationDidEnterBackground:(UIApplication*)application
{
	[[CCDirector sharedDirector] stopAnimation];
}

-(void) applicationWillEnterForeground:(UIApplication*)application
{
	[[CCDirector sharedDirector] startAnimation];
}

- (void)applicationWillTerminate:(UIApplication *)application
{	
	[[CCDirector sharedDirector] end];
}

// purge memory
- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
	[[CCDirector sharedDirector] purgeCachedData];
}

// next delta time will be zero
-(void) applicationSignificantTimeChange:(UIApplication *)application
{
	[[CCDirector sharedDirector] setNextDeltaTimeZero:YES];
}

- (void) dealloc
{
	[window dealloc];
	[super dealloc];
}

@end
