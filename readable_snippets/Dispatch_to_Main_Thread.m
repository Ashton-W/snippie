//Dispatch to Main Thread
//Dispatch a code block to the main thread [objc]
//
//Completion scopes: ["CodeExpression"]
//Language: Objective-C
//
Copy / Paste in Xcode:

dispatch_async(dispatch_get_main_queue(), ^(void) {
    <#code#>
});
