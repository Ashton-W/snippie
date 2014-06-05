//__strong self
//Declare strong reference to weak reference [objc]
//
//Completion scopes: ["CodeBlock"]
//Language: Objective-C
//
Copy / Paste in Xcode:

__strong __typeof(&*weakSelf)strongSelf = &<#weakSelf#&>;
