# setHref

Replaces the entire URL string.

To import and use `setHref` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.setHref
```

**Signature**

```ts
export declare const setHref: { (href: string): (url: URL) => URL; (url: URL, href: string): URL }
```
