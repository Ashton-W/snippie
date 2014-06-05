//__weak self
//Declare weak reference to self [objc]
//
//Completion scopes: ["CodeBlock"]
//Language: Objective-C
//
Copy / Paste in Xcode:

__weak __typeof(&*self)weakSelf = self;
