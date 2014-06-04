//KVO Setter
//Use when overriding @synthesized property setter methods
//
//Completion scopes: ["CodeBlock"]
//
Copy / Paste in Xcode:

[self willChangeValueForKey:@"<#ivar#>"];
[<#ivar#> autorelease];
<#ivar#> = [<#newValue#> retain];
[self didChangeValueForKey:@"<#ivar#>"];
