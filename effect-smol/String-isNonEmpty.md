Package: `effect`<br />
Module: `String`<br />

## String.isNonEmpty

Test whether a `string` is non empty.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L374)

Since v2.0.0