Package: `effect`<br />
Module: `String`<br />

## String.isNonEmpty

Checks whether a `string` is non-empty.

**Example** (Checking for non-empty strings)

```ts
import { String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(String.isNonEmpty(""), false)
assert.deepStrictEqual(String.isNonEmpty("a"), true)
```

**Signature**

```ts
declare const isNonEmpty: (self: string) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L420)

Since v2.0.0