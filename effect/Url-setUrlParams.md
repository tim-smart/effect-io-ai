# setUrlParams

Updates the query parameters of a URL.

**Details**

This function allows you to set or replace the query parameters of a `URL`
object using the provided `UrlParams`. It creates a new `URL` object with the
updated parameters, leaving the original object unchanged.

To import and use `setUrlParams` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.setUrlParams
```

**Example**

```ts
import { Url, UrlParams } from "@effect/platform"

const myUrl = new URL("https://example.com?foo=bar")

// Write parameters
const updatedUrl = Url.setUrlParams(myUrl, UrlParams.fromInput([["key", "value"]]))

console.log(updatedUrl.toString())
// Output: https://example.com/?key=value
```

**Signature**

```ts
export declare const setUrlParams: {
  (urlParams: UrlParams.UrlParams): (url: URL) => URL
  (url: URL, urlParams: UrlParams.UrlParams): URL
}
```
