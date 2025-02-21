# setHost

Updates the host (domain and port) of the URL.

To import and use `setHost` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.setHost
```

**Signature**

```ts
export declare const setHost: { (host: string): (url: URL) => URL; (url: URL, host: string): URL }
```
