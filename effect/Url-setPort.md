# setPort

Updates the port of the URL.

To import and use `setPort` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.setPort
```

**Signature**

```ts
export declare const setPort: { (port: string): (url: URL) => URL; (url: URL, port: string): URL }
```
