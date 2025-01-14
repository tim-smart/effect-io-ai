# urlParams

Retrieves the query parameters from a URL.

**Details**

This function extracts the query parameters from a `URL` object and returns
them as `UrlParams`. The resulting structure can be easily manipulated or
inspected.

To import and use `urlParams` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.urlParams
```

**Example**

```ts
import { Url } from "@effect/platform"

const myUrl = new URL("https://example.com?foo=bar")

// Read parameters
const params = Url.urlParams(myUrl)

console.log(params)
// Output: [ [ 'foo', 'bar' ] ]
```

**Signature**

```ts
export declare const urlParams: (url: URL) => UrlParams.UrlParams
```
