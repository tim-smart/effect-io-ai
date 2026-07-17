Package: `effect`<br />
Module: `Url`<br />

## Url.setUrlParams

Updates the query parameters of a URL.

**Details**

This function allows you to set or replace the query parameters of a `URL`
object using the provided `UrlParams`. It creates a new `URL` object with the
updated parameters, leaving the original object unchanged.

**Example** (Replacing query parameters)

```ts
import { Url, UrlParams } from "effect/unstable/http"

const myUrl = new URL("https://example.com?foo=bar")

// Write parameters
const updatedUrl = Url.setUrlParams(
  myUrl,
  UrlParams.fromInput([["key", "value"]])
)

console.log(updatedUrl.toString())
// Output: https://example.com/?key=value
```

**Signature**

```ts
declare const setUrlParams: { (urlParams: UrlParams.Input): (url: URL) => URL; (url: URL, urlParams: UrlParams.Input): URL; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Url.ts#L316)

Since v4.0.0