Package: `effect`<br />
Module: `Url`<br />

## Url.mutate

This function clones the original `URL` object and applies a callback to the
clone, allowing multiple updates at once.

**Example**

```ts
import { Url } from "effect/unstable/http"

const myUrl = new URL("https://example.com")

const mutatedUrl = Url.mutate(myUrl, (url) => {
  url.username = "user"
  url.password = "pass"
})

console.log("Mutated:", mutatedUrl.toString())
// Output: Mutated: https://user:pass@example.com/
```

**Signature**

```ts
declare const mutate: { (f: (url: URL) => void): (self: URL) => URL; (self: URL, f: (url: URL) => void): URL; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Url.ts#L92)

Since v4.0.0