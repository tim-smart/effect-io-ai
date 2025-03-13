Package: `@effect/platform`<br />
Module: `Url`<br />

## Url.modifyUrlParams

Reads, modifies, and updates the query parameters of a URL.

**Details**

This function provides a functional way to interact with query parameters by
reading the current parameters, applying a transformation function, and then
writing the updated parameters back to the URL. It returns a new `URL` object
with the modified parameters, ensuring immutability.

**Example**

```ts
import { Url, UrlParams } from "@effect/platform"

const myUrl = new URL("https://example.com?foo=bar")

const changedUrl = Url.modifyUrlParams(myUrl, UrlParams.append("key", "value"))

console.log(changedUrl.toString())
// Output: https://example.com/?foo=bar&key=value
```

**Signature**

```ts
declare const modifyUrlParams: { (f: (urlParams: UrlParams.UrlParams) => UrlParams.UrlParams): (url: URL) => URL; (url: URL, f: (urlParams: UrlParams.UrlParams) => UrlParams.UrlParams): URL; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Url.ts#L306)

Since v1.0.0