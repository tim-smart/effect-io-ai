Package: `effect`<br />
Module: `Number`<br />

## Number.isGreaterThanOrEqualTo

Returns a function that checks if a given `number` is greater than or equal to the provided one.

**Example**

```ts
import { isGreaterThanOrEqualTo } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(isGreaterThanOrEqualTo(2, 3), false)
assert.deepStrictEqual(isGreaterThanOrEqualTo(3, 3), true)
assert.deepStrictEqual(isGreaterThanOrEqualTo(4, 3), true)
```

**Signature**

```ts
declare const isGreaterThanOrEqualTo: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L306)

Since v2.0.0