# setPathname

Updates the path of the URL.

To import and use `setPathname` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.setPathname
```

**Signature**

```ts
export declare const setPathname: { (pathname: string): (url: URL) => URL; (url: URL, pathname: string): URL }
```
