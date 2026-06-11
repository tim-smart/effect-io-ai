Package: `effect`<br />
Module: `String`<br />

## String.isEmpty

Checks whether a `string` is empty.

**Example** (Checking for empty strings)

```ts
import { String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(String.isEmpty(""), true)
assert.deepStrictEqual(String.isEmpty("a"), false)
```

**Signature**

```ts
declare const isEmpty: (self: string) => self is ""
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L402)

Since v2.0.0