# Snippets

		
### #pragma Mark - `mark`
```Objective-C
#pragma mark - <#Section#>

```
<br>

### Animation Block - `animblock`
```Objective-C
 [UIView animateWithDuration:<#secs#> animations:^{
        <#code#>
    } completion:^(BOOL finished) {
    }];
```
<br>

### Class Continuation - `continuation`
```Objective-C
@interface <#Class Name#> ()
<#Continuation#>
@end

```
<br>

### Constant String - `const`
```Objective-C
NSString * const k<#Constant#> = @"<#ConstantString#>";
```
<br>

### Dispatch to Background - `dispatchBackground`
```Objective-C
dispatch_async(dispatch_get_global_queue(<#dispatch_queue_priority_t priority#>, <#unsigned long flags#>), ^(void) {
    <#code#>
    
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        <#code#>
    });
});
```
<br>

### Dispatch to Main Thread - `dispatchMain`
```Objective-C
dispatch_async(dispatch_get_main_queue(), ^(void) {
    <#code#>
});

```
<br>

### Import - `pim`
```Objective-C
#import "<#header#>"

```
<br>

### KVO Setter - `kvo`
```Objective-C
[self willChangeValueForKey:@"<#ivar#>"];
[<#ivar#> autorelease];
<#ivar#> = [<#newValue#> retain];
[self didChangeValueForKey:@"<#ivar#>"];

```
<br>

### NSFetchedResultsControllerDelegate - `frcd`
```Objective-C
#pragma mark - NSFetchedResultsControllerDelegate

- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller
{
    [self.tableView beginUpdates];
}

- (void)controller:(NSFetchedResultsController *)controller
  didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo
           atIndex:(NSUInteger)sectionIndex
     forChangeType:(NSFetchedResultsChangeType)type
{
    switch(type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationAutomatic];
            break;
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationAutomatic];
            break;
    }
}

- (void)controller:(NSFetchedResultsController *)controller
   didChangeObject:(id)object
       atIndexPath:(NSIndexPath *)indexPath
     forChangeType:(NSFetchedResultsChangeType)type
      newIndexPath:(NSIndexPath *)newIndexPath
{    
    switch(type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
            break;
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
            break;
        case NSFetchedResultsChangeUpdate:
            [self configureCell:[self.tableView cellForRowAtIndexPath:indexPath] forRowAtIndexPath:indexPath];
            break;
        case NSFetchedResultsChangeMove:
            [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
            [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
            break;
    }
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller
{
    [self.tableView endUpdates];
}

```
<br>

### Section - `sect`
```Objective-C
/****************************************************************************/
#pragma mark <#section#>

```
<br>

### Shared Singleton - `shared`
```Objective-C
+ (instancetype)shared<#name#>
{
    static <#class#> *_shared<#name#> = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shared<#name#> = <#initializer#>;
    });
    
    return _shared<#name#>;
}

```
<br>

### UITableViewDataSource - `tvds`
```Objective-C
#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return <#number#>;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return <#number#>;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:<#(UITableViewCellStyle)#> reuseIdentifier:CellIdentifier];
    }
        
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    <#statements#>
}

```
<br>

### UITableViewDelegate - `tvdel`
```Objective-C
#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    <#statements#>
}

```
<br>

### UIViewController Lifecycle - `lifecycle`
```Objective-C
#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

```
<br>

### __strong self - `strongself`
```Objective-C
__strong __typeof(&*weakSelf)strongSelf = &<#weakSelf#&>;

```
<br>

### __weak self - `weakself`
```Objective-C
__weak __typeof(&*self)weakSelf = self;

```
<br>

### dispatch_async Pattern for Background Processing - `async`
```Objective-C
dispatch_async(dispatch_get_global_queue(<#dispatch_queue_priority_t priority#>, <#unsigned long flags#>), ^(void) {
    <#code#>
    
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        <#code#>
    });
});

```
<br>

### init - `init`
```Objective-C
self = [super init];
if (!self) {
  return nil;
}

<#initializations#>

return self;

```
<br>


		
