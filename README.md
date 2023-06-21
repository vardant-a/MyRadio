# MyRadio


## Git commit style proposal
Style: `[X, NA-##]` Message  where `NA` - it's name application, `##` - ticket number

### Definitions 
* F - Feature
* B - Bugfix
* R - Refactoring (almost) no functional changes
* S - CodeStyle without functional effect
* D - Update of an own/internal module/dependancy or external Library
* L - Localization text changes
* T - Tests
* M - Meta (version bump, release, documentation)
* G - Graphics
* Y - Merge Changes
* CI - CI pipeline changes

#### Examples
```
[F, PC-1] Adding feature XX to registration view
[B, PC-2] Fixing app crash when authorize view is opened
[G, PC-3] Adding new app icons
[D, PC-4] Updating Alamofire to version 1.2.3 via SPM 
```
