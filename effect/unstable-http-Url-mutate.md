Package: `effect`<br />
Module: `Url`<br />

## Url.mutate

Updates a cloned `URL` with a callback, allowing multiple changes at once.

**Example** (Mutating URL credentials)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Url.ts#L153)

Since v4.0.0