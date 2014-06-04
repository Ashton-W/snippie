//Dispatch to Main Thread
//Dispatch a code block to the main thread
//
//Completion scopes: ["CodeExpression"]
//
Copy / Paste in Xcode:

dispatch_async(dispatch_get_main_queue(), ^(void) {
    <#code#>
});
