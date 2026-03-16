Package: `effect`<br />
Module: `String`<br />

## String.normalize

Normalizes a string according to the specified Unicode normalization form.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

const str = "\u1E9B\u0323"
assert.deepStrictEqual(pipe(str, String.normalize()), "\u1E9B\u0323")
assert.deepStrictEqual(pipe(str, String.normalize("NFC")), "\u1E9B\u0323")
assert.deepStrictEqual(pipe(str, String.normalize("NFD")), "\u017F\u0323\u0307")
assert.deepStrictEqual(pipe(str, String.normalize("NFKC")), "\u1E69")
assert.deepStrictEqual(
  pipe(str, String.normalize("NFKD")),
  "\u0073\u0323\u0307"
)
```

**Signature**

```ts
declare const normalize: (form?: "NFC" | "NFD" | "NFKC" | "NFKD") => (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L687)

Since v2.0.0