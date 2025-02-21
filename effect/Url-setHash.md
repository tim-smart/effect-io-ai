# setHash

Updates the hash fragment of the URL.

To import and use `setHash` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.setHash
```

**Signature**

```ts
export declare const setHash: { (hash: string): (url: URL) => URL; (url: URL, hash: string): URL }
```
