#import "LongPressFix.h"

@implementation LongPressFix

- (void)pluginInitialize {
  self.lpgr = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleLongPressGestures:)];
  self.lpgr.minimumPressDuration = 0.45f;
  self.lpgr.allowableMovement = 100.0f;

  NSArray *views = self.webView.subviews;
  if (views.count == 0) {
    NSLog(@"No webview subviews found, not applying the longpress fix");
    return;
  }
  UIView *webViewScrollView = views[0];
  NSArray *webViewScrollViewSubViews = webViewScrollView.subviews;
  UIView *browser = webViewScrollViewSubViews[0];
  [browser addGestureRecognizer:self.lpgr];
}

- (void)handleLongPressGestures:(UILongPressGestureRecognizer *)sender {
  if ([sender isEqual:self.lpgr]) {
    if (sender.state == UIGestureRecognizerStateBegan) {
      NSLog(@"ignoring a longpress in order to suppress the magnifying glass (iOS9 quirk)");
    }
  }
}

@end