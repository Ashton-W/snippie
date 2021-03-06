//Dispatch to Background
//Dispatch a code block to background (then on main) [objc]
//
//Completion scopes: ["CodeExpression"]
//Language: Objective-C
//
Copy / Paste in Xcode:

dispatch_async(dispatch_get_global_queue(<#dispatch_queue_priority_t priority#>, <#unsigned long flags#>), ^(void) {
    <#code#>
    
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        <#code#>
    });
});
