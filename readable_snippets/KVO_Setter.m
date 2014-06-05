//KVO Setter
//Use when overriding @synthesized property setter methods [objc]
//
//Completion scopes: ["CodeBlock"]
//Language: Objective-C
//
Copy / Paste in Xcode:

[self willChangeValueForKey:@"<#ivar#>"];
[<#ivar#> autorelease];
<#ivar#> = [<#newValue#> retain];
[self didChangeValueForKey:@"<#ivar#>"];
