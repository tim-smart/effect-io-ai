# setProtocol

Updates the protocol (e.g., `http`, `https`).

To import and use `setProtocol` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.setProtocol
```

**Signature**

```ts
export declare const setProtocol: { (protocol: string): (url: URL) => URL; (url: URL, protocol: string): URL }
```
