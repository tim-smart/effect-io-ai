Package: `effect`<br />
Module: `Number`<br />

## Number.isGreaterThanOrEqualTo

Returns a function that checks if a given `number` is greater than or equal to the provided one.

**Example** (Checking greater-than-or-equal comparisons)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.isGreaterThanOrEqualTo(2, 3), false)
assert.deepStrictEqual(Number.isGreaterThanOrEqualTo(3, 3), true)
assert.deepStrictEqual(Number.isGreaterThanOrEqualTo(4, 3), true)
```

**Signature**

```ts
declare const isGreaterThanOrEqualTo: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L314)

Since v4.0.0