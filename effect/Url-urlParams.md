Package: `@effect/platform`<br />
Module: `Url`<br />

## Url.urlParams

Retrieves the query parameters from a URL.

**Details**

This function extracts the query parameters from a `URL` object and returns
them as `UrlParams`. The resulting structure can be easily manipulated or
inspected.

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
declare const urlParams: (url: URL) => UrlParams.UrlParams
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Url.ts#L279)

Since v1.0.0