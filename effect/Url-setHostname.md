# setHostname

Updates the domain of the URL without modifying the port.

To import and use `setHostname` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.setHostname
```

**Signature**

```ts
export declare const setHostname: { (hostname: string): (url: URL) => URL; (url: URL, hostname: string): URL }
```
