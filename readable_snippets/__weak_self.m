//__weak self
//Declare weak reference to self
//
//Completion scopes: ["CodeBlock"]
//
Copy / Paste in Xcode:

__weak __typeof(&*self)weakSelf = self;
