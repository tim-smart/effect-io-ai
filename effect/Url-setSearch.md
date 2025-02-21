# setSearch

Updates the query string of the URL.

To import and use `setSearch` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.setSearch
```

**Signature**

```ts
export declare const setSearch: { (search: string): (url: URL) => URL; (url: URL, search: string): URL }
```
