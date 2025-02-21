# mutate

This function clones the original `URL` object and applies a callback to the
clone, allowing multiple updates at once.

To import and use `mutate` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.mutate
```

**Example**

```ts
import { Url } from "@effect/platform"

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
export declare const mutate: { (f: (url: URL) => void): (self: URL) => URL; (self: URL, f: (url: URL) => void): URL }
```
